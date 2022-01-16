#ifndef moontrade_ordered_LOCK_H
#define moontrade_ordered_LOCK_H

#include <stdint.h>
#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif


typedef struct moontrade_ordered_rwlock_t {
    void (*lock)(size_t arg0, size_t arg1);
} moontrade_ordered_rwlock_t;

extern void moontrade_ordered_sleep(uint64_t nanos);
extern uint64_t moontrade_ordered_rwlock_size();
extern void moontrade_ordered_rwlock_new(size_t arg0, size_t arg1);
extern void moontrade_ordered_rwlock_try_lock(size_t lock, size_t arg1);
extern void moontrade_ordered_rwlock_lock(size_t arg0, size_t arg1);
extern void moontrade_ordered_rwlock_unlock(size_t lock, size_t arg1);
extern void moontrade_ordered_rwlock_unlock_and_lock_shared(size_t lock, size_t arg1);
extern void moontrade_ordered_rwlock_try_lock_shared(size_t lock, size_t arg1);
extern void moontrade_ordered_rwlock_lock_shared(size_t lock, size_t arg1);
extern void moontrade_ordered_rwlock_unlock_shared(size_t lock, size_t arg1);
extern void moontrade_ordered_rwlock_destroy(size_t lock, size_t arg1);

typedef struct moontrade_ordered_rwticketlock_t moontrade_ordered_rwticketlock_t;

extern uint64_t moontrade_ordered_rwticketlock_size();
extern void moontrade_ordered_rwticketlock_new(size_t arg0, size_t arg1);
extern void moontrade_ordered_rwticketlock_lock(size_t lock, size_t arg1);
extern void moontrade_ordered_rwticketlock_lock_aggressive(size_t lock, size_t arg1);
extern void moontrade_ordered_rwticketlock_lock_nice(size_t lock, size_t arg1);
extern void moontrade_ordered_rwticketlock_unlock(size_t lock, size_t arg1);
extern void moontrade_ordered_rwticketlock_unlock_and_lock_shared(size_t lock, size_t arg1);
extern void moontrade_ordered_rwticketlock_try_lock(size_t lock, size_t arg1);
extern void moontrade_ordered_rwticketlock_try_lock_shared(size_t lock, size_t arg1);
extern void moontrade_ordered_rwticketlock_lock_shared(size_t lock, size_t arg1);
extern void moontrade_ordered_rwticketlock_unlock_shared(size_t lock, size_t arg1);
extern void moontrade_ordered_rwticketlock_destroy(size_t lock, size_t arg1);

struct moontrade_ordered_lock_api {
    int fair;
    void (* lock)(void* lock);
    void (* unlock)(void* lock);
    void (* lock_shared)(void* lock);
    void (* unlock_shared)(void* lock);
};
extern const struct moontrade_ordered_lock_api moontrade_ordered_lock_unfair_api;
extern const struct moontrade_ordered_lock_api moontrade_ordered_lock_fair_api;

#ifdef __cplusplus
}
#endif

#endif //moontrade_ordered_LOCK_H
