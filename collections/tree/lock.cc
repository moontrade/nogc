#include <stdlib.h>
#include <string.h>
//#include <atomic>
#include "lock.h"
#include "RWSpinLock.h"

#include <thread>
#include <shared_mutex>

void moontrade_ordered_sleep(uint64_t nanos) {
    std::this_thread::sleep_for((std::chrono::nanoseconds) nanos);
}

//class InternalRWSpinLock {
//
//public:
//    InternalRWSpinLock() {
//    }
//    void lock() {
//        _lock.lock();
//    }
//    void unlock() {
//        _lock.unlock();
//    }
//    void lock_shared() {
//        _lock.lock_shared();
//    }
//    void unlock_shared() {
//        _lock.unlock_shared();
//    }
//private:
//    RWSpinLock _lock;
//};

uint64_t moontrade_ordered_rwlock_size() {
    return (uint64_t)sizeof(RWSpinLock);
}
void moontrade_ordered_rwlock_new(size_t arg0, size_t arg1) {
    *((size_t*)arg0) = (size_t)(void*)(new RWSpinLock());
}
void moontrade_ordered_rwlock_try_lock(size_t lock, size_t arg1) {
    *((bool*)(arg1)) = ((RWSpinLock*)(void*)(lock))->try_lock();
}
void moontrade_ordered_rwlock_lock(size_t lock, size_t arg1) {
    ((RWSpinLock*)(lock))->lock();
}
void moontrade_ordered_rwlock_unlock(size_t lock, size_t arg1) {
    ((RWSpinLock*)(lock))->unlock();
}
void moontrade_ordered_rwlock_unlock_and_lock_shared(size_t lock, size_t arg1) {
    ((RWSpinLock*)(void*)(lock))->unlock_and_lock_shared();
}
void moontrade_ordered_rwlock_try_lock_shared(size_t lock, size_t arg1) {
    *((bool*)(arg1)) = ((RWSpinLock*)(void*)(lock))->try_lock_shared();
}
void moontrade_ordered_rwlock_lock_shared(size_t lock, size_t arg1) {
    ((RWSpinLock*)(void*)(lock))->lock_shared();
}
void moontrade_ordered_rwlock_unlock_shared(size_t lock, size_t arg1) {
    ((RWSpinLock*)(void*)(lock))->unlock_shared();
}
void moontrade_ordered_rwlock_destroy(size_t lock, size_t arg1) {
    delete (RWSpinLock*)(void*)(lock);
}

uint64_t moontrade_ordered_rwticketlock_size() {
    return (uint64_t)sizeof(RWTicketSpinLock64);
}
void moontrade_ordered_rwticketlock_new(size_t arg0, size_t arg1) {
    *((size_t*)arg0) = (size_t)(void*)(new RWTicketSpinLock64());
}
void moontrade_ordered_rwticketlock_lock(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->lock();
}
void moontrade_ordered_rwticketlock_lock_aggressive(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->writeLockAggressive();
}
void moontrade_ordered_rwticketlock_lock_nice(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->writeLockNice();
}
void moontrade_ordered_rwticketlock_unlock(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->unlock();
}
void moontrade_ordered_rwticketlock_unlock_and_lock_shared(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->unlock_and_lock_shared();
}
void moontrade_ordered_rwticketlock_try_lock(size_t lock, size_t arg1) {
    *((bool*)(arg1)) = ((RWTicketSpinLock64*)(void*)(lock))->try_lock();
}
void moontrade_ordered_rwticketlock_try_lock_shared(size_t lock, size_t arg1) {
    *((bool*)(arg1)) = ((RWTicketSpinLock64*)(void*)(lock))->try_lock_shared();
}
void moontrade_ordered_rwticketlock_lock_shared(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->lock_shared();
}
void moontrade_ordered_rwticketlock_unlock_shared(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->unlock_shared();
}
void moontrade_ordered_rwticketlock_destroy(size_t lock, size_t arg1) {
    delete (RWTicketSpinLock64*)(void*)(lock);
}

static void rwlock_lock(void* lock) {
    ((RWSpinLock*)(lock))->lock();
}
static void rwlock_unlock(void* lock) {
    ((RWSpinLock*)(lock))->unlock();
}
static void rwlock_lock_shared(void* lock) {
    ((RWSpinLock*)(lock))->lock_shared();
}
static void rwlock_unlock_shared(void* lock) {
    ((RWSpinLock*)(lock))->unlock_shared();
}

static inline void rwticketlock_lock(void* lock) {
    ((RWTicketSpinLock64*)(lock))->lock();
}
static inline void rwticketlock_unlock(void* lock) {
    ((RWTicketSpinLock64*)(lock))->unlock();
}
static inline void rwticketlock_lock_shared(void* lock) {
    ((RWTicketSpinLock64*)(lock))->lock_shared();
}
static inline void rwticketlock_unlock_shared(void* lock) {
    ((RWTicketSpinLock64*)(lock))->unlock_shared();
}

const struct moontrade_ordered_lock_api moontrade_ordered_lock_unfair_api = {
    .fair = 0,
    .lock = rwlock_lock,
    .unlock = rwlock_unlock,
    .lock_shared = rwlock_lock_shared,
    .unlock_shared = rwlock_unlock_shared,
};

const struct moontrade_ordered_lock_api moontrade_ordered_lock_fair_api = {
    .fair = 1,
    .lock = rwticketlock_lock,
    .unlock = rwticketlock_unlock,
    .lock_shared = rwticketlock_lock_shared,
    .unlock_shared = rwticketlock_unlock_shared,
};
