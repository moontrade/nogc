#ifndef MOONTRADE_LOCK_IMPL
#define MOONTRADE_LOCK_IMPL

#include <stdlib.h>
#include <string.h>
//#include <atomic>
#include "lock.h"
#include "RWSpinLock.h"

#include <thread>
#include <shared_mutex>

void moontrade_lock_sleep(uint64_t nanos) {
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

uint64_t moontrade_rwlock_size() {
    return (uint64_t)sizeof(RWSpinLock);
}
void moontrade_rwlock_new(size_t arg0, size_t arg1) {
    *((size_t*)arg0) = (size_t)(void*)(new RWSpinLock());
}
void moontrade_rwlock_try_lock(size_t lock, size_t arg1) {
    *((bool*)(arg1)) = ((RWSpinLock*)(void*)(lock))->try_lock();
}
void moontrade_rwlock_lock(size_t lock, size_t arg1) {
    ((RWSpinLock*)(void*)(lock))->lock();
}
void moontrade_rwlock_unlock(size_t lock, size_t arg1) {
    ((RWSpinLock*)(void*)(lock))->unlock();
}
void moontrade_rwlock_unlock_and_lock_shared(size_t lock, size_t arg1) {
    ((RWSpinLock*)(void*)(lock))->unlock_and_lock_shared();
}
void moontrade_rwlock_try_lock_shared(size_t lock, size_t arg1) {
    *((bool*)(arg1)) = ((RWSpinLock*)(void*)(lock))->try_lock_shared();
}
void moontrade_rwlock_lock_shared(size_t lock, size_t arg1) {
    ((RWSpinLock*)(void*)(lock))->lock_shared();
}
void moontrade_rwlock_unlock_shared(size_t lock, size_t arg1) {
    ((RWSpinLock*)(void*)(lock))->unlock_shared();
}
void moontrade_rwlock_destroy(size_t lock, size_t arg1) {
    delete (RWSpinLock*)(void*)(lock);
}

uint64_t moontrade_rwticketlock_size() {
    return (uint64_t)sizeof(RWTicketSpinLock64);
}
void moontrade_rwticketlock_new(size_t arg0, size_t arg1) {
    *((size_t*)arg0) = (size_t)(void*)(new RWTicketSpinLock64());
}
void moontrade_rwticketlock_lock(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->lock();
}
void moontrade_rwticketlock_lock_aggressive(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->writeLockAggressive();
}
void moontrade_rwticketlock_lock_nice(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->writeLockNice();
}
void moontrade_rwticketlock_unlock(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->unlock();
}
void moontrade_rwticketlock_unlock_and_lock_shared(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->unlock_and_lock_shared();
}
void moontrade_rwticketlock_try_lock(size_t lock, size_t arg1) {
    *((bool*)(arg1)) = ((RWTicketSpinLock64*)(void*)(lock))->try_lock();
}
void moontrade_rwticketlock_try_lock_shared(size_t lock, size_t arg1) {
    *((bool*)(arg1)) = ((RWTicketSpinLock64*)(void*)(lock))->try_lock_shared();
}
void moontrade_rwticketlock_lock_shared(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->lock_shared();
}
void moontrade_rwticketlock_unlock_shared(size_t lock, size_t arg1) {
    ((RWTicketSpinLock64*)(void*)(lock))->unlock_shared();
}
void moontrade_rwticketlock_destroy(size_t lock, size_t arg1) {
    delete (RWTicketSpinLock64*)(void*)(lock);
}

#endif //MOONTRADE_LOCK_IMPL