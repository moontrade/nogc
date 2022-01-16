#ifndef MOONTRADE_LOCK_H
#define MOONTRADE_LOCK_H

#include <stdint.h>
#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif


typedef struct moontrade_rwlock_t {
    void (*lock)(size_t arg0, size_t arg1);
} moontrade_rwlock_t;

extern void moontrade_lock_sleep(uint64_t nanos);
extern uint64_t moontrade_rwlock_size();
extern void moontrade_rwlock_new(size_t arg0, size_t arg1);
extern void moontrade_rwlock_try_lock(size_t lock, size_t arg1);
extern void moontrade_rwlock_lock(size_t arg0, size_t arg1);
extern void moontrade_rwlock_unlock(size_t lock, size_t arg1);
extern void moontrade_rwlock_unlock_and_lock_shared(size_t lock, size_t arg1);
extern void moontrade_rwlock_try_lock_shared(size_t lock, size_t arg1);
extern void moontrade_rwlock_lock_shared(size_t lock, size_t arg1);
extern void moontrade_rwlock_unlock_shared(size_t lock, size_t arg1);
extern void moontrade_rwlock_destroy(size_t lock, size_t arg1);

typedef struct moontrade_rwticketlock_t moontrade_rwticketlock_t;

extern uint64_t moontrade_rwticketlock_size();
extern void moontrade_rwticketlock_new(size_t arg0, size_t arg1);
extern void moontrade_rwticketlock_lock(size_t lock, size_t arg1);
extern void moontrade_rwticketlock_lock_aggressive(size_t lock, size_t arg1);
extern void moontrade_rwticketlock_lock_nice(size_t lock, size_t arg1);
extern void moontrade_rwticketlock_unlock(size_t lock, size_t arg1);
extern void moontrade_rwticketlock_unlock_and_lock_shared(size_t lock, size_t arg1);
extern void moontrade_rwticketlock_try_lock(size_t lock, size_t arg1);
extern void moontrade_rwticketlock_try_lock_shared(size_t lock, size_t arg1);
extern void moontrade_rwticketlock_lock_shared(size_t lock, size_t arg1);
extern void moontrade_rwticketlock_unlock_shared(size_t lock, size_t arg1);
extern void moontrade_rwticketlock_destroy(size_t lock, size_t arg1);

#ifdef __cplusplus
}
#endif

#endif //MOONTRADE_LOCK_H
