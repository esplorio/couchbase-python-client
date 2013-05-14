# This code was automatically generated by CWrap version 0.0.0

cdef extern from "libcouchbase/couchbase.h":

    ctypedef unsigned char __u_char

    ctypedef unsigned short __u_short

    ctypedef unsigned int __u_int

    ctypedef unsigned long __u_long

    ctypedef signed char __int8_t

    ctypedef unsigned char __uint8_t

    ctypedef short __int16_t

    ctypedef unsigned short __uint16_t

    ctypedef int __int32_t

    ctypedef unsigned int __uint32_t

    ctypedef long __int64_t

    ctypedef unsigned long __uint64_t

    ctypedef long __quad_t

    ctypedef unsigned long __u_quad_t

    ctypedef unsigned long __dev_t

    ctypedef unsigned int __uid_t

    ctypedef unsigned int __gid_t

    ctypedef unsigned long __ino_t

    ctypedef unsigned long __ino64_t

    ctypedef unsigned int __mode_t

    ctypedef unsigned long __nlink_t

    ctypedef long __off_t

    ctypedef long __off64_t

    ctypedef int __pid_t

    ctypedef struct __fsid_t:
        int __val[2]


    ctypedef long __clock_t

    ctypedef unsigned long __rlim_t

    ctypedef unsigned long __rlim64_t

    ctypedef unsigned int __id_t

    # Likely because this was generated on a Linux box, this code defines
    # __time_t and that definition is not respected on OS X, which expects
    # __darwin_time_t. Fix that here:
    IF UNAME_SYSNAME == "Darwin":
        ctypedef long __darwin_time_t
    ELSE:
       ctypedef long __time_t

    ctypedef unsigned int __useconds_t

    ctypedef long __suseconds_t

    ctypedef int __daddr_t

    ctypedef long __swblk_t

    ctypedef int __key_t

    ctypedef int __clockid_t

    ctypedef void *__timer_t

    ctypedef long __blksize_t

    ctypedef long __blkcnt_t

    ctypedef long __blkcnt64_t

    ctypedef unsigned long __fsblkcnt_t

    ctypedef unsigned long __fsblkcnt64_t

    ctypedef unsigned long __fsfilcnt_t

    ctypedef unsigned long __fsfilcnt64_t

    ctypedef long __ssize_t

    ctypedef __off64_t __loff_t

    ctypedef __quad_t *__qaddr_t

    ctypedef char *__caddr_t

    ctypedef long __intptr_t

    ctypedef unsigned int __socklen_t

    ctypedef __clock_t clock_t

    # Likely because this was generated on a Linux box, this code defines
    # __time_t and that definition is not respected on OS X, which expects
    # __darwin_time_t. Fix that here:
    IF UNAME_SYSNAME == "Darwin":
       ctypedef __darwin_time_t time_t
    ELSE:
       ctypedef __time_t time_t

    ctypedef __clockid_t clockid_t

    ctypedef __timer_t timer_t

    # Likely because this was generated on a Linux box, this code defines
    # __time_t and that definition is not respected on OS X, which expects
    # __darwin_time_t. Fix that here:
    IF UNAME_SYSNAME == "Darwin":
        cdef struct timespec:
            __darwin_time_t tv_sec
            long tv_nsec
    ELSE:
        cdef struct timespec:
            __time_t tv_sec
            long tv_nsec

    cdef struct tm:
        int tm_sec
        int tm_min
        int tm_hour
        int tm_mday
        int tm_mon
        int tm_year
        int tm_wday
        int tm_yday
        int tm_isdst
        long tm_gmtoff
        const char *tm_zone

    cdef struct itimerspec:
        timespec it_interval
        timespec it_value

    cdef struct sigevent:
        pass

    ctypedef __pid_t pid_t

    clock_t clock()

    time_t time(time_t *__timer)

    double difftime(time_t __time1, time_t __time0)

    time_t mktime(tm *__tp)

    int strftime(char *__s, int __maxsize, const char *__format, tm *__tp)

    cdef struct ____locale_struct___locale_data:
        pass

    ctypedef ____locale_struct___locale_data ____locale_struct___locale_data_t

    cdef struct __locale_struct:
        ____locale_struct___locale_data *__locales[13]
        const unsigned short *__ctype_b
        const int *__ctype_tolower
        const int *__ctype_toupper
        const char *__names[13]

    ctypedef __locale_struct *__locale_t

    ctypedef __locale_t locale_t

    int strftime_l(char *__s, int __maxsize, const char *__format, tm *__tp, __locale_t __loc)

    tm *gmtime(const time_t *__timer)

    tm *localtime(const time_t *__timer)

    tm *gmtime_r(const time_t *__timer, tm *__tp)

    tm *localtime_r(const time_t *__timer, tm *__tp)

    char *asctime(tm *__tp)

    char *ctime(const time_t *__timer)

    char *asctime_r(tm *__tp, char *__buf)

    char *ctime_r(const time_t *__timer, char *__buf)

    char *__tzname[2]
    int __daylight
    long __timezone
    char *tzname[2]
    void tzset()

    int daylight
    long timezone
    int stime(const time_t *__when)

    time_t timegm(tm *__tp)

    time_t timelocal(tm *__tp)

    int dysize(int __year)

    int nanosleep(timespec *__requested_time, timespec *__remaining)

    int clock_getres(clockid_t __clock_id, timespec *__res)

    int clock_gettime(clockid_t __clock_id, timespec *__tp)

    int clock_settime(clockid_t __clock_id, timespec *__tp)

    int clock_nanosleep(clockid_t __clock_id, int __flags, timespec *__req, timespec *__rem)

    int clock_getcpuclockid(pid_t __pid, clockid_t *__clock_id)

    int timer_create(clockid_t __clock_id, sigevent *__evp, timer_t *__timerid)

    int timer_delete(timer_t __timerid)

    int timer_settime(timer_t __timerid, int __flags, itimerspec *__value, itimerspec *__ovalue)

    int timer_gettime(timer_t __timerid, itimerspec *__value)

    int timer_getoverrun(timer_t __timerid)

    ctypedef __u_char u_char

    ctypedef __u_short u_short

    ctypedef __u_int u_int

    ctypedef __u_long u_long

    ctypedef __quad_t quad_t

    ctypedef __u_quad_t u_quad_t

    ctypedef __fsid_t fsid_t

    ctypedef __loff_t loff_t

    ctypedef __ino_t ino_t

    ctypedef __dev_t dev_t

    ctypedef __gid_t gid_t

    ctypedef __mode_t mode_t

    ctypedef __nlink_t nlink_t

    ctypedef __uid_t uid_t

    ctypedef __off_t off_t

    ctypedef __id_t id_t

    ctypedef __ssize_t ssize_t

    ctypedef __daddr_t daddr_t

    ctypedef __caddr_t caddr_t

    ctypedef __key_t key_t

    ctypedef unsigned long ulong

    ctypedef unsigned short ushort

    ctypedef unsigned int uint

    ctypedef signed char int8_t

    ctypedef short int16_t

    ctypedef int int32_t

    ctypedef long int64_t

    ctypedef unsigned char u_int8_t

    ctypedef unsigned short u_int16_t

    ctypedef unsigned int u_int32_t

    ctypedef unsigned long u_int64_t

    ctypedef long register_t

    ctypedef int __sig_atomic_t

    ctypedef struct __sigset_t:
        unsigned long __val[16]


    ctypedef __sigset_t sigset_t


    # Likely because this was generated on a Linux box, this code defines
    # __time_t and that definition is not respected on OS X, which expects
    # __darwin_time_t. Fix that here:
    IF UNAME_SYSNAME == "Darwin":
        cdef struct timeval:
            __darwin_time_t tv_sec
            __suseconds_t tv_usec
    ELSE:
        cdef struct timeval:
            __time_t tv_sec
            __suseconds_t tv_usec


    ctypedef __suseconds_t suseconds_t

    ctypedef long __fd_mask

    ctypedef struct fd_set:
        __fd_mask __fds_bits[16]


    ctypedef __fd_mask fd_mask

    int select(int __nfds, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, timeval *__timeout)

    int pselect(int __nfds, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, timespec *__timeout, const __sigset_t *__sigmask)

    unsigned int gnu_dev_major(unsigned long long __dev)

    unsigned int gnu_dev_minor(unsigned long long __dev)

    unsigned long long gnu_dev_makedev(unsigned int __major, unsigned int __minor)

    ctypedef __blksize_t blksize_t

    ctypedef __blkcnt_t blkcnt_t

    ctypedef __fsblkcnt_t fsblkcnt_t

    ctypedef __fsfilcnt_t fsfilcnt_t

    ctypedef unsigned long pthread_t

    ctypedef union pthread_attr_t:
        char __size[56]
        long __align


    cdef struct __pthread_internal_list:
        __pthread_internal_list *__prev
        __pthread_internal_list *__next

    ctypedef __pthread_internal_list __pthread_list_t

    cdef struct __pthread_mutex_t___pthread_mutex_s:
        int __lock
        unsigned int __count
        int __owner
        unsigned int __nusers
        int __kind
        int __spins
        __pthread_list_t __list

    ctypedef __pthread_mutex_t___pthread_mutex_s __pthread_mutex_t___pthread_mutex_s_t

    ctypedef union pthread_mutex_t:
        __pthread_mutex_t___pthread_mutex_s_t __data
        char __size[40]
        long __align


    ctypedef union pthread_mutexattr_t:
        char __size[4]
        int __align


    cdef struct __pthread_cond_t___data:
        int __lock
        unsigned int __futex
        unsigned long long __total_seq
        unsigned long long __wakeup_seq
        unsigned long long __woken_seq
        void *__mutex
        unsigned int __nwaiters
        unsigned int __broadcast_seq

    ctypedef __pthread_cond_t___data __pthread_cond_t___data_t

    ctypedef union pthread_cond_t:
        __pthread_cond_t___data_t __data
        char __size[48]
        long long __align


    ctypedef union pthread_condattr_t:
        char __size[4]
        int __align


    ctypedef unsigned int pthread_key_t

    ctypedef int pthread_once_t

    cdef struct __pthread_rwlock_t___data:
        int __lock
        unsigned int __nr_readers
        unsigned int __readers_wakeup
        unsigned int __writer_wakeup
        unsigned int __nr_readers_queued
        unsigned int __nr_writers_queued
        int __writer
        int __shared
        unsigned long __pad1
        unsigned long __pad2
        unsigned int __flags

    ctypedef __pthread_rwlock_t___data __pthread_rwlock_t___data_t

    ctypedef union pthread_rwlock_t:
        __pthread_rwlock_t___data_t __data
        char __size[56]
        long __align


    ctypedef union pthread_rwlockattr_t:
        char __size[8]
        long __align


    ctypedef int pthread_spinlock_t

    ctypedef union pthread_barrier_t:
        char __size[32]
        long __align


    ctypedef union pthread_barrierattr_t:
        char __size[4]
        int __align


    ctypedef unsigned char uint8_t

    ctypedef unsigned short uint16_t

    ctypedef unsigned int uint32_t

    ctypedef unsigned long uint64_t

    ctypedef signed char int_least8_t

    ctypedef short int_least16_t

    ctypedef int int_least32_t

    ctypedef long int_least64_t

    ctypedef unsigned char uint_least8_t

    ctypedef unsigned short uint_least16_t

    ctypedef unsigned int uint_least32_t

    ctypedef unsigned long uint_least64_t

    ctypedef signed char int_fast8_t

    ctypedef long int_fast16_t

    ctypedef long int_fast32_t

    ctypedef long int_fast64_t

    ctypedef unsigned char uint_fast8_t

    ctypedef unsigned long uint_fast16_t

    ctypedef unsigned long uint_fast32_t

    ctypedef unsigned long uint_fast64_t

    ctypedef long intptr_t

    ctypedef unsigned long uintptr_t

    ctypedef long intmax_t

    ctypedef unsigned long uintmax_t

    ctypedef int64_t lcb_int64_t

    ctypedef int32_t lcb_int32_t

    ctypedef int lcb_size_t

    ctypedef ssize_t lcb_ssize_t

    ctypedef uint16_t lcb_vbucket_t

    ctypedef uint8_t lcb_uint8_t

    ctypedef uint16_t lcb_uint16_t

    ctypedef uint32_t lcb_uint32_t

    ctypedef uint64_t lcb_cas_t

    ctypedef uint64_t lcb_uint64_t

    ctypedef time_t lcb_time_t

    ctypedef enum lcb_error_t:
        LCB_SUCCESS
        LCB_AUTH_CONTINUE
        LCB_AUTH_ERROR
        LCB_DELTA_BADVAL
        LCB_E2BIG
        LCB_EBUSY
        LCB_EINTERNAL
        LCB_EINVAL
        LCB_ENOMEM
        LCB_ERANGE
        LCB_ERROR
        LCB_ETMPFAIL
        LCB_KEY_EEXISTS
        LCB_KEY_ENOENT
        LCB_DLOPEN_FAILED
        LCB_DLSYM_FAILED
        LCB_NETWORK_ERROR
        LCB_NOT_MY_VBUCKET
        LCB_NOT_STORED
        LCB_NOT_SUPPORTED
        LCB_UNKNOWN_COMMAND
        LCB_UNKNOWN_HOST
        LCB_PROTOCOL_ERROR
        LCB_ETIMEDOUT
        LCB_CONNECT_ERROR
        LCB_BUCKET_ENOENT
        LCB_CLIENT_ENOMEM
        LCB_CLIENT_ETMPFAIL
        LCB_EBADHANDLE
        LCB_SERVER_BUG
        LCB_PLUGIN_VERSION_MISMATCH
        LCB_INVALID_HOST_FORMAT
        LCB_INVALID_CHAR


    cdef struct lcb_st:
        pass

    ctypedef lcb_st *lcb_t

    cdef struct lcb_http_request_st:
        pass

    ctypedef lcb_http_request_st *lcb_http_request_t

    cdef struct lcb_timer_st:
        pass

    ctypedef lcb_timer_st *lcb_timer_t

    ctypedef lcb_uint8_t lcb_datatype_t

    ctypedef enum lcb_configuration_t:
        LCB_CONFIGURATION_NEW
        LCB_CONFIGURATION_CHANGED
        LCB_CONFIGURATION_UNCHANGED


    ctypedef enum lcb_storage_t:
        LCB_ADD
        LCB_REPLACE
        LCB_SET
        LCB_APPEND
        LCB_PREPEND


    ctypedef enum lcb_observe_t:
        LCB_OBSERVE_FOUND
        LCB_OBSERVE_PERSISTED
        LCB_OBSERVE_NOT_FOUND
        LCB_OBSERVE_MAX


    ctypedef enum lcb_type_t:
        LCB_TYPE_BUCKET
        LCB_TYPE_CLUSTER


    ctypedef int lcb_socket_t

    ctypedef enum lcb_io_ops_type_t:
        LCB_IO_OPS_DEFAULT
        LCB_IO_OPS_LIBEVENT
        LCB_IO_OPS_WINSOCK
        LCB_IO_OPS_LIBEV


    ctypedef enum lcb_vbucket_state_t:
        LCB_VBUCKET_STATE_ACTIVE
        LCB_VBUCKET_STATE_REPLICA
        LCB_VBUCKET_STATE_PENDING
        LCB_VBUCKET_STATE_DEAD


    ctypedef enum lcb_verbosity_level_t:
        LCB_VERBOSITY_DETAIL
        LCB_VERBOSITY_DEBUG
        LCB_VERBOSITY_INFO
        LCB_VERBOSITY_WARNING


    cdef struct sockaddr:
        pass

    cdef struct lcb_iovec_st:
        char *iov_base
        lcb_size_t iov_len

    cdef struct ____lcb_io_opt_st_v_v0:
        void *cookie
        int error
        int need_cleanup
        int (*socket)(lcb_io_opt_st *, int, int, int)
        int (*connect)(lcb_io_opt_st *, int, sockaddr *, unsigned int)
        long (*recv)(lcb_io_opt_st *, int, void *, int, int)
        long (*send)(lcb_io_opt_st *, int, const void *, int, int)
        long (*recvv)(lcb_io_opt_st *, int, lcb_iovec_st *, int)
        long (*sendv)(lcb_io_opt_st *, int, lcb_iovec_st *, int)
        void (*close)(lcb_io_opt_st *, int)
        void *(*create_timer)(lcb_io_opt_st *)
        void (*destroy_timer)(lcb_io_opt_st *, void *)
        void (*delete_timer)(lcb_io_opt_st *, void *)
        int (*update_timer)(lcb_io_opt_st *, void *, unsigned int, void *, void (*)(int, short, void *))
        void *(*create_event)(lcb_io_opt_st *)
        void (*destroy_event)(lcb_io_opt_st *, void *)
        int (*update_event)(lcb_io_opt_st *, int, void *, short, void *, void (*)(int, short, void *))
        void (*delete_event)(lcb_io_opt_st *, int, void *)
        void (*stop_event_loop)(lcb_io_opt_st *)
        void (*run_event_loop)(lcb_io_opt_st *)

    ctypedef ____lcb_io_opt_st_v_v0 ____lcb_io_opt_st_v_v0_t

    cdef union __lcb_io_opt_st_v:
        ____lcb_io_opt_st_v_v0_t v0

    ctypedef __lcb_io_opt_st_v __lcb_io_opt_st_v_t

    cdef struct lcb_io_opt_st:
        int version
        void *dlhandle
        void (*destructor)(lcb_io_opt_st *)
        __lcb_io_opt_st_v_t v

    ctypedef lcb_io_opt_st *lcb_io_opt_t

    ctypedef enum lcb_syncmode_t:
        LCB_ASYNCHRONOUS
        LCB_SYNCHRONOUS


    ctypedef enum lcb_ipv6_t:
        LCB_IPV6_DISABLED
        LCB_IPV6_ONLY
        LCB_IPV6_ALLOW


    ctypedef enum lcb_http_type_t:
        LCB_HTTP_TYPE_VIEW
        LCB_HTTP_TYPE_MANAGEMENT
        LCB_HTTP_TYPE_RAW
        LCB_HTTP_TYPE_MAX


    ctypedef enum lcb_http_method_t:
        LCB_HTTP_METHOD_GET
        LCB_HTTP_METHOD_POST
        LCB_HTTP_METHOD_PUT
        LCB_HTTP_METHOD_DELETE
        LCB_HTTP_METHOD_MAX


    ctypedef enum lcb_http_status_t:
        LCB_HTTP_STATUS_CONTINUE
        LCB_HTTP_STATUS_SWITCHING_PROTOCOLS
        LCB_HTTP_STATUS_PROCESSING
        LCB_HTTP_STATUS_OK
        LCB_HTTP_STATUS_CREATED
        LCB_HTTP_STATUS_ACCEPTED
        LCB_HTTP_STATUS_NON_AUTHORITATIVE_INFORMATION
        LCB_HTTP_STATUS_NO_CONTENT
        LCB_HTTP_STATUS_RESET_CONTENT
        LCB_HTTP_STATUS_PARTIAL_CONTENT
        LCB_HTTP_STATUS_MULTI_STATUS
        LCB_HTTP_STATUS_MULTIPLE_CHOICES
        LCB_HTTP_STATUS_MOVED_PERMANENTLY
        LCB_HTTP_STATUS_FOUND
        LCB_HTTP_STATUS_SEE_OTHER
        LCB_HTTP_STATUS_NOT_MODIFIED
        LCB_HTTP_STATUS_USE_PROXY
        LCB_HTTP_STATUS_UNUSED
        LCB_HTTP_STATUS_TEMPORARY_REDIRECT
        LCB_HTTP_STATUS_BAD_REQUEST
        LCB_HTTP_STATUS_UNAUTHORIZED
        LCB_HTTP_STATUS_PAYMENT_REQUIRED
        LCB_HTTP_STATUS_FORBIDDEN
        LCB_HTTP_STATUS_NOT_FOUND
        LCB_HTTP_STATUS_METHOD_NOT_ALLOWED
        LCB_HTTP_STATUS_NOT_ACCEPTABLE
        LCB_HTTP_STATUS_PROXY_AUTHENTICATION_REQUIRED
        LCB_HTTP_STATUS_REQUEST_TIMEOUT
        LCB_HTTP_STATUS_CONFLICT
        LCB_HTTP_STATUS_GONE
        LCB_HTTP_STATUS_LENGTH_REQUIRED
        LCB_HTTP_STATUS_PRECONDITION_FAILED
        LCB_HTTP_STATUS_REQUEST_ENTITY_TOO_LARGE
        LCB_HTTP_STATUS_REQUEST_URI_TOO_LONG
        LCB_HTTP_STATUS_UNSUPPORTED_MEDIA_TYPE
        LCB_HTTP_STATUS_REQUESTED_RANGE_NOT_SATISFIABLE
        LCB_HTTP_STATUS_EXPECTATION_FAILED
        LCB_HTTP_STATUS_UNPROCESSABLE_ENTITY
        LCB_HTTP_STATUS_LOCKED
        LCB_HTTP_STATUS_FAILED_DEPENDENCY
        LCB_HTTP_STATUS_INTERNAL_SERVER_ERROR
        LCB_HTTP_STATUS_NOT_IMPLEMENTED
        LCB_HTTP_STATUS_BAD_GATEWAY
        LCB_HTTP_STATUS_SERVICE_UNAVAILABLE
        LCB_HTTP_STATUS_GATEWAY_TIMEOUT
        LCB_HTTP_STATUS_HTTP_VERSION_NOT_SUPPORTED
        LCB_HTTP_STATUS_INSUFFICIENT_STORAGE


    cdef struct ____lcb_create_st_v_v0:
        const char *host
        const char *user
        const char *passwd
        const char *bucket
        lcb_io_opt_st *io

    ctypedef ____lcb_create_st_v_v0 ____lcb_create_st_v_v0_t

    cdef struct ____lcb_create_st_v_v1:
        const char *host
        const char *user
        const char *passwd
        const char *bucket
        lcb_io_opt_st *io
        lcb_type_t type

    ctypedef ____lcb_create_st_v_v1 ____lcb_create_st_v_v1_t

    cdef union __lcb_create_st_v:
        ____lcb_create_st_v_v0_t v0
        ____lcb_create_st_v_v1_t v1

    ctypedef __lcb_create_st_v __lcb_create_st_v_t

    cdef struct lcb_create_st:
        int version
        __lcb_create_st_v_t v

    cdef struct ____lcb_create_io_ops_st_v_v0:
        lcb_io_ops_type_t type
        void *cookie

    ctypedef ____lcb_create_io_ops_st_v_v0 ____lcb_create_io_ops_st_v_v0_t

    cdef struct ____lcb_create_io_ops_st_v_v1:
        const char *sofile
        const char *symbol
        void *cookie

    ctypedef ____lcb_create_io_ops_st_v_v1 ____lcb_create_io_ops_st_v_v1_t

    cdef union __lcb_create_io_ops_st_v:
        ____lcb_create_io_ops_st_v_v0_t v0
        ____lcb_create_io_ops_st_v_v1_t v1

    ctypedef __lcb_create_io_ops_st_v __lcb_create_io_ops_st_v_t

    cdef struct lcb_create_io_ops_st:
        int version
        __lcb_create_io_ops_st_v_t v

    cdef struct ____lcb_get_cmd_st_v_v0:
        const void *key
        lcb_size_t nkey
        lcb_time_t exptime
        int lock
        const void *hashkey
        lcb_size_t nhashkey

    ctypedef ____lcb_get_cmd_st_v_v0 ____lcb_get_cmd_st_v_v0_t

    cdef union __lcb_get_cmd_st_v:
        ____lcb_get_cmd_st_v_v0_t v0

    ctypedef __lcb_get_cmd_st_v __lcb_get_cmd_st_v_t

    cdef struct lcb_get_cmd_st:
        int version
        __lcb_get_cmd_st_v_t v

    ctypedef lcb_get_cmd_st lcb_get_cmd_t

    cdef struct ____lcb_get_replica_cmd_st_v_v0:
        const void *key
        lcb_size_t nkey
        const void *hashkey
        lcb_size_t nhashkey

    ctypedef ____lcb_get_replica_cmd_st_v_v0 ____lcb_get_replica_cmd_st_v_v0_t

    cdef union __lcb_get_replica_cmd_st_v:
        ____lcb_get_replica_cmd_st_v_v0_t v0

    ctypedef __lcb_get_replica_cmd_st_v __lcb_get_replica_cmd_st_v_t

    cdef struct lcb_get_replica_cmd_st:
        int version
        __lcb_get_replica_cmd_st_v_t v

    ctypedef lcb_get_replica_cmd_st lcb_get_replica_cmd_t

    cdef struct ____lcb_unlock_cmd_st_v_v0:
        const void *key
        lcb_size_t nkey
        lcb_cas_t cas
        const void *hashkey
        lcb_size_t nhashkey

    ctypedef ____lcb_unlock_cmd_st_v_v0 ____lcb_unlock_cmd_st_v_v0_t

    cdef union __lcb_unlock_cmd_st_v:
        ____lcb_unlock_cmd_st_v_v0_t v0

    ctypedef __lcb_unlock_cmd_st_v __lcb_unlock_cmd_st_v_t

    cdef struct lcb_unlock_cmd_st:
        int version
        __lcb_unlock_cmd_st_v_t v

    ctypedef lcb_unlock_cmd_st lcb_unlock_cmd_t

    ctypedef lcb_get_cmd_t lcb_touch_cmd_t

    cdef struct ____lcb_store_cmd_st_v_v0:
        const void *key
        lcb_size_t nkey
        const void *bytes
        lcb_size_t nbytes
        lcb_uint32_t flags
        lcb_cas_t cas
        lcb_datatype_t datatype
        lcb_time_t exptime
        lcb_storage_t operation
        const void *hashkey
        lcb_size_t nhashkey

    ctypedef ____lcb_store_cmd_st_v_v0 ____lcb_store_cmd_st_v_v0_t

    cdef union __lcb_store_cmd_st_v:
        ____lcb_store_cmd_st_v_v0_t v0

    ctypedef __lcb_store_cmd_st_v __lcb_store_cmd_st_v_t

    cdef struct lcb_store_cmd_st:
        int version
        __lcb_store_cmd_st_v_t v

    ctypedef lcb_store_cmd_st lcb_store_cmd_t

    cdef struct ____lcb_arithmetic_cmd_st_v_v0:
        const void *key
        lcb_size_t nkey
        lcb_time_t exptime
        int create
        lcb_int64_t delta
        lcb_uint64_t initial
        const void *hashkey
        lcb_size_t nhashkey

    ctypedef ____lcb_arithmetic_cmd_st_v_v0 ____lcb_arithmetic_cmd_st_v_v0_t

    cdef union __lcb_arithmetic_cmd_st_v:
        ____lcb_arithmetic_cmd_st_v_v0_t v0

    ctypedef __lcb_arithmetic_cmd_st_v __lcb_arithmetic_cmd_st_v_t

    cdef struct lcb_arithmetic_cmd_st:
        int version
        __lcb_arithmetic_cmd_st_v_t v

    ctypedef lcb_arithmetic_cmd_st lcb_arithmetic_cmd_t

    cdef struct ____lcb_observe_cmd_st_v_v0:
        const void *key
        lcb_size_t nkey
        const void *hashkey
        lcb_size_t nhashkey

    ctypedef ____lcb_observe_cmd_st_v_v0 ____lcb_observe_cmd_st_v_v0_t

    cdef union __lcb_observe_cmd_st_v:
        ____lcb_observe_cmd_st_v_v0_t v0

    ctypedef __lcb_observe_cmd_st_v __lcb_observe_cmd_st_v_t

    cdef struct lcb_observe_cmd_st:
        int version
        __lcb_observe_cmd_st_v_t v

    ctypedef lcb_observe_cmd_st lcb_observe_cmd_t

    cdef struct ____lcb_remove_cmd_st_v_v0:
        const void *key
        lcb_size_t nkey
        lcb_cas_t cas
        const void *hashkey
        lcb_size_t nhashkey

    ctypedef ____lcb_remove_cmd_st_v_v0 ____lcb_remove_cmd_st_v_v0_t

    cdef union __lcb_remove_cmd_st_v:
        ____lcb_remove_cmd_st_v_v0_t v0

    ctypedef __lcb_remove_cmd_st_v __lcb_remove_cmd_st_v_t

    cdef struct lcb_remove_cmd_st:
        int version
        __lcb_remove_cmd_st_v_t v

    ctypedef lcb_remove_cmd_st lcb_remove_cmd_t

    cdef struct ____lcb_http_cmd_st_v_v0:
        const char *path
        lcb_size_t npath
        const void *body
        lcb_size_t nbody
        lcb_http_method_t method
        int chunked
        const char *content_type

    ctypedef ____lcb_http_cmd_st_v_v0 ____lcb_http_cmd_st_v_v0_t

    cdef struct ____lcb_http_cmd_st_v_v1:
        const char *path
        lcb_size_t npath
        const void *body
        lcb_size_t nbody
        lcb_http_method_t method
        int chunked
        const char *content_type
        const char *host
        const char *username
        const char *password

    ctypedef ____lcb_http_cmd_st_v_v1 ____lcb_http_cmd_st_v_v1_t

    cdef union __lcb_http_cmd_st_v:
        ____lcb_http_cmd_st_v_v0_t v0
        ____lcb_http_cmd_st_v_v1_t v1

    ctypedef __lcb_http_cmd_st_v __lcb_http_cmd_st_v_t

    cdef struct lcb_http_cmd_st:
        int version
        __lcb_http_cmd_st_v_t v

    ctypedef lcb_http_cmd_st lcb_http_cmd_t

    cdef struct ____lcb_server_stats_cmd_st_v_v0:
        const void *name
        lcb_size_t nname

    ctypedef ____lcb_server_stats_cmd_st_v_v0 ____lcb_server_stats_cmd_st_v_v0_t

    cdef union __lcb_server_stats_cmd_st_v:
        ____lcb_server_stats_cmd_st_v_v0_t v0

    ctypedef __lcb_server_stats_cmd_st_v __lcb_server_stats_cmd_st_v_t

    cdef struct lcb_server_stats_cmd_st:
        int version
        __lcb_server_stats_cmd_st_v_t v

    ctypedef lcb_server_stats_cmd_st lcb_server_stats_cmd_t

    cdef struct ____lcb_server_version_cmd_st_v_v0:
        const void *notused

    ctypedef ____lcb_server_version_cmd_st_v_v0 ____lcb_server_version_cmd_st_v_v0_t

    cdef union __lcb_server_version_cmd_st_v:
        ____lcb_server_version_cmd_st_v_v0_t v0

    ctypedef __lcb_server_version_cmd_st_v __lcb_server_version_cmd_st_v_t

    cdef struct lcb_server_version_cmd_st:
        int version
        __lcb_server_version_cmd_st_v_t v

    ctypedef lcb_server_version_cmd_st lcb_server_version_cmd_t

    cdef struct ____lcb_verbosity_cmd_st_v_v0:
        const char *server
        lcb_verbosity_level_t level

    ctypedef ____lcb_verbosity_cmd_st_v_v0 ____lcb_verbosity_cmd_st_v_v0_t

    cdef union __lcb_verbosity_cmd_st_v:
        ____lcb_verbosity_cmd_st_v_v0_t v0

    ctypedef __lcb_verbosity_cmd_st_v __lcb_verbosity_cmd_st_v_t

    cdef struct lcb_verbosity_cmd_st:
        int version
        __lcb_verbosity_cmd_st_v_t v

    ctypedef lcb_verbosity_cmd_st lcb_verbosity_cmd_t

    cdef struct ____lcb_flush_cmd_st_v_v0:
        int unused

    ctypedef ____lcb_flush_cmd_st_v_v0 ____lcb_flush_cmd_st_v_v0_t

    cdef union __lcb_flush_cmd_st_v:
        ____lcb_flush_cmd_st_v_v0_t v0

    ctypedef __lcb_flush_cmd_st_v __lcb_flush_cmd_st_v_t

    cdef struct lcb_flush_cmd_st:
        int version
        __lcb_flush_cmd_st_v_t v

    ctypedef lcb_flush_cmd_st lcb_flush_cmd_t

    cdef struct ____lcb_get_resp_t_v_v0:
        const void *key
        lcb_size_t nkey
        const void *bytes
        lcb_size_t nbytes
        lcb_uint32_t flags
        lcb_cas_t cas
        lcb_datatype_t datatype

    ctypedef ____lcb_get_resp_t_v_v0 ____lcb_get_resp_t_v_v0_t

    cdef union __lcb_get_resp_t_v:
        ____lcb_get_resp_t_v_v0_t v0

    ctypedef __lcb_get_resp_t_v __lcb_get_resp_t_v_t

    ctypedef struct lcb_get_resp_t:
        int version
        __lcb_get_resp_t_v_t v


    cdef struct ____lcb_store_resp_t_v_v0:
        const void *key
        lcb_size_t nkey
        lcb_cas_t cas

    ctypedef ____lcb_store_resp_t_v_v0 ____lcb_store_resp_t_v_v0_t

    cdef union __lcb_store_resp_t_v:
        ____lcb_store_resp_t_v_v0_t v0

    ctypedef __lcb_store_resp_t_v __lcb_store_resp_t_v_t

    ctypedef struct lcb_store_resp_t:
        int version
        __lcb_store_resp_t_v_t v


    cdef struct ____lcb_remove_resp_t_v_v0:
        const void *key
        lcb_size_t nkey
        lcb_cas_t cas

    ctypedef ____lcb_remove_resp_t_v_v0 ____lcb_remove_resp_t_v_v0_t

    cdef union __lcb_remove_resp_t_v:
        ____lcb_remove_resp_t_v_v0_t v0

    ctypedef __lcb_remove_resp_t_v __lcb_remove_resp_t_v_t

    ctypedef struct lcb_remove_resp_t:
        int version
        __lcb_remove_resp_t_v_t v


    cdef struct ____lcb_touch_resp_t_v_v0:
        const void *key
        lcb_size_t nkey
        lcb_cas_t cas

    ctypedef ____lcb_touch_resp_t_v_v0 ____lcb_touch_resp_t_v_v0_t

    cdef union __lcb_touch_resp_t_v:
        ____lcb_touch_resp_t_v_v0_t v0

    ctypedef __lcb_touch_resp_t_v __lcb_touch_resp_t_v_t

    ctypedef struct lcb_touch_resp_t:
        int version
        __lcb_touch_resp_t_v_t v


    cdef struct ____lcb_unlock_resp_t_v_v0:
        const void *key
        lcb_size_t nkey

    ctypedef ____lcb_unlock_resp_t_v_v0 ____lcb_unlock_resp_t_v_v0_t

    cdef union __lcb_unlock_resp_t_v:
        ____lcb_unlock_resp_t_v_v0_t v0

    ctypedef __lcb_unlock_resp_t_v __lcb_unlock_resp_t_v_t

    ctypedef struct lcb_unlock_resp_t:
        int version
        __lcb_unlock_resp_t_v_t v


    cdef struct ____lcb_arithmetic_resp_t_v_v0:
        const void *key
        lcb_size_t nkey
        lcb_uint64_t value
        lcb_cas_t cas

    ctypedef ____lcb_arithmetic_resp_t_v_v0 ____lcb_arithmetic_resp_t_v_v0_t

    cdef union __lcb_arithmetic_resp_t_v:
        ____lcb_arithmetic_resp_t_v_v0_t v0

    ctypedef __lcb_arithmetic_resp_t_v __lcb_arithmetic_resp_t_v_t

    ctypedef struct lcb_arithmetic_resp_t:
        int version
        __lcb_arithmetic_resp_t_v_t v


    cdef struct ____lcb_observe_resp_t_v_v0:
        const void *key
        lcb_size_t nkey
        lcb_cas_t cas
        lcb_observe_t status
        int from_master
        lcb_time_t ttp
        lcb_time_t ttr

    ctypedef ____lcb_observe_resp_t_v_v0 ____lcb_observe_resp_t_v_v0_t

    cdef union __lcb_observe_resp_t_v:
        ____lcb_observe_resp_t_v_v0_t v0

    ctypedef __lcb_observe_resp_t_v __lcb_observe_resp_t_v_t

    ctypedef struct lcb_observe_resp_t:
        int version
        __lcb_observe_resp_t_v_t v


    cdef struct ____lcb_http_resp_t_v_v0:
        lcb_http_status_t status
        const char *path
        lcb_size_t npath
        const char *const *headers
        const void *bytes
        lcb_size_t nbytes

    ctypedef ____lcb_http_resp_t_v_v0 ____lcb_http_resp_t_v_v0_t

    cdef union __lcb_http_resp_t_v:
        ____lcb_http_resp_t_v_v0_t v0

    ctypedef __lcb_http_resp_t_v __lcb_http_resp_t_v_t

    ctypedef struct lcb_http_resp_t:
        int version
        __lcb_http_resp_t_v_t v


    cdef struct ____lcb_server_stat_resp_st_v_v0:
        const char *server_endpoint
        const void *key
        lcb_size_t nkey
        const void *bytes
        lcb_size_t nbytes

    ctypedef ____lcb_server_stat_resp_st_v_v0 ____lcb_server_stat_resp_st_v_v0_t

    cdef union __lcb_server_stat_resp_st_v:
        ____lcb_server_stat_resp_st_v_v0_t v0

    ctypedef __lcb_server_stat_resp_st_v __lcb_server_stat_resp_st_v_t

    cdef struct lcb_server_stat_resp_st:
        int version
        __lcb_server_stat_resp_st_v_t v

    ctypedef lcb_server_stat_resp_st lcb_server_stat_resp_t

    cdef struct ____lcb_server_version_resp_st_v_v0:
        const char *server_endpoint
        const char *vstring
        lcb_size_t nvstring

    ctypedef ____lcb_server_version_resp_st_v_v0 ____lcb_server_version_resp_st_v_v0_t

    cdef union __lcb_server_version_resp_st_v:
        ____lcb_server_version_resp_st_v_v0_t v0

    ctypedef __lcb_server_version_resp_st_v __lcb_server_version_resp_st_v_t

    cdef struct lcb_server_version_resp_st:
        int version
        __lcb_server_version_resp_st_v_t v

    ctypedef lcb_server_version_resp_st lcb_server_version_resp_t

    cdef struct ____lcb_verbosity_resp_st_v_v0:
        const char *server_endpoint

    ctypedef ____lcb_verbosity_resp_st_v_v0 ____lcb_verbosity_resp_st_v_v0_t

    cdef union __lcb_verbosity_resp_st_v:
        ____lcb_verbosity_resp_st_v_v0_t v0

    ctypedef __lcb_verbosity_resp_st_v __lcb_verbosity_resp_st_v_t

    cdef struct lcb_verbosity_resp_st:
        int version
        __lcb_verbosity_resp_st_v_t v

    ctypedef lcb_verbosity_resp_st lcb_verbosity_resp_t

    cdef struct ____lcb_flush_resp_st_v_v0:
        const char *server_endpoint

    ctypedef ____lcb_flush_resp_st_v_v0 ____lcb_flush_resp_st_v_v0_t

    cdef union __lcb_flush_resp_st_v:
        ____lcb_flush_resp_st_v_v0_t v0

    ctypedef __lcb_flush_resp_st_v __lcb_flush_resp_st_v_t

    cdef struct lcb_flush_resp_st:
        int version
        __lcb_flush_resp_st_v_t v

    ctypedef lcb_flush_resp_st lcb_flush_resp_t

    lcb_error_t lcb_verify_struct_size(lcb_uint32_t id, lcb_uint32_t version, lcb_size_t size)

    cdef enum lcb_compat_t:
        LCB_MEMCACHED_CLUSTER
        LCB_CACHED_CONFIG

    ctypedef lcb_compat_t lcb_cluster_t

    lcb_error_t lcb_create_compat(lcb_compat_t type, const void *specific, lcb_t *instance, lcb_io_opt_st *io)

    cdef struct lcb_memcached_st:
        const char *serverlist
        const char *username
        const char *password

    cdef struct lcb_cached_config_st:
        lcb_create_st createopt
        const char *cachefile

    void lcb_behavior_set_syncmode(lcb_t instance, lcb_syncmode_t syncmode)

    lcb_syncmode_t lcb_behavior_get_syncmode(lcb_t instance)

    void lcb_behavior_set_ipv6(lcb_t instance, lcb_ipv6_t mode)

    lcb_ipv6_t lcb_behavior_get_ipv6(lcb_t instance)

    void lcb_behavior_set_config_errors_threshold(lcb_t instance, lcb_size_t num_events)

    lcb_size_t lcb_behavior_get_config_errors_threshold(lcb_t instance)

    ctypedef void (*lcb_get_callback)(lcb_st *, const void *, lcb_error_t, lcb_get_resp_t *)

    ctypedef void (*lcb_store_callback)(lcb_st *, const void *, lcb_storage_t, lcb_error_t, lcb_store_resp_t *)

    ctypedef void (*lcb_remove_callback)(lcb_st *, const void *, lcb_error_t, lcb_remove_resp_t *)

    ctypedef void (*lcb_touch_callback)(lcb_st *, const void *, lcb_error_t, lcb_touch_resp_t *)

    ctypedef void (*lcb_unlock_callback)(lcb_st *, const void *, lcb_error_t, lcb_unlock_resp_t *)

    ctypedef void (*lcb_arithmetic_callback)(lcb_st *, const void *, lcb_error_t, lcb_arithmetic_resp_t *)

    ctypedef void (*lcb_observe_callback)(lcb_st *, const void *, lcb_error_t, lcb_observe_resp_t *)

    ctypedef void (*lcb_stat_callback)(lcb_st *, const void *, lcb_error_t, lcb_server_stat_resp_st *)

    ctypedef void (*lcb_version_callback)(lcb_st *, const void *, lcb_error_t, lcb_server_version_resp_st *)

    ctypedef void (*lcb_error_callback)(lcb_st *, lcb_error_t, const char *)

    ctypedef void (*lcb_flush_callback)(lcb_st *, const void *, lcb_error_t, lcb_flush_resp_st *)

    ctypedef void (*lcb_timer_callback)(lcb_timer_st *, lcb_st *, const void *)

    ctypedef void (*lcb_http_complete_callback)(lcb_http_request_st *, lcb_st *, const void *, lcb_error_t, lcb_http_resp_t *)

    ctypedef void (*lcb_http_data_callback)(lcb_http_request_st *, lcb_st *, const void *, lcb_error_t, lcb_http_resp_t *)

    ctypedef void (*lcb_configuration_callback)(lcb_st *, lcb_configuration_t)

    ctypedef void (*lcb_verbosity_callback)(lcb_st *, const void *, lcb_error_t, lcb_verbosity_resp_st *)

    lcb_get_callback lcb_set_get_callback(lcb_t, lcb_get_callback)

    lcb_store_callback lcb_set_store_callback(lcb_t, lcb_store_callback)

    lcb_arithmetic_callback lcb_set_arithmetic_callback(lcb_t, lcb_arithmetic_callback)

    lcb_observe_callback lcb_set_observe_callback(lcb_t, lcb_observe_callback)

    lcb_remove_callback lcb_set_remove_callback(lcb_t, lcb_remove_callback)

    lcb_stat_callback lcb_set_stat_callback(lcb_t, lcb_stat_callback)

    lcb_version_callback lcb_set_version_callback(lcb_t, lcb_version_callback)

    lcb_touch_callback lcb_set_touch_callback(lcb_t, lcb_touch_callback)

    lcb_error_callback lcb_set_error_callback(lcb_t, lcb_error_callback)

    lcb_flush_callback lcb_set_flush_callback(lcb_t, lcb_flush_callback)

    lcb_http_complete_callback lcb_set_http_complete_callback(lcb_t, lcb_http_complete_callback)

    lcb_http_data_callback lcb_set_http_data_callback(lcb_t, lcb_http_data_callback)

    lcb_unlock_callback lcb_set_unlock_callback(lcb_t, lcb_unlock_callback)

    lcb_configuration_callback lcb_set_configuration_callback(lcb_t, lcb_configuration_callback)

    lcb_verbosity_callback lcb_set_verbosity_callback(lcb_t, lcb_verbosity_callback)

    cdef struct event_base:
        pass

    cdef enum lcb_timeunit_t:
        LCB_TIMEUNIT_NSEC
        LCB_TIMEUNIT_USEC
        LCB_TIMEUNIT_MSEC
        LCB_TIMEUNIT_SEC

    lcb_error_t lcb_enable_timings(lcb_t instance)

    lcb_error_t lcb_disable_timings(lcb_t instance)

    ctypedef void (*lcb_timings_callback)(lcb_st *, const void *, lcb_timeunit_t, unsigned int, unsigned int, unsigned int, unsigned int)

    lcb_error_t lcb_get_timings(lcb_t instance, const void *cookie, lcb_timings_callback callback)

    const char *lcb_get_version(lcb_uint32_t *version)

    lcb_error_t lcb_create_io_ops(lcb_io_opt_t *op, lcb_create_io_ops_st *options)

    lcb_error_t lcb_destroy_io_ops(lcb_io_opt_t op)

    lcb_error_t lcb_create(lcb_t *instance, lcb_create_st *options)

    void lcb_destroy(lcb_t instance)

    void lcb_set_timeout(lcb_t instance, lcb_uint32_t usec)

    lcb_uint32_t lcb_get_timeout(lcb_t instance)

    const char *lcb_get_host(lcb_t instance)

    const char *lcb_get_port(lcb_t instance)

    lcb_error_t lcb_connect(lcb_t instance)

    lcb_error_t lcb_get_last_error(lcb_t instance)

    const char *lcb_strerror(lcb_t instance, lcb_error_t error)

    void lcb_flush_buffers(lcb_t instance, const void *cookie)

    void lcb_set_cookie(lcb_t instance, const void *cookie)

    const void *lcb_get_cookie(lcb_t instance)

    lcb_error_t lcb_wait(lcb_t instance) nogil

    int lcb_is_waiting(lcb_t instance)

    void lcb_breakout(lcb_t instance)

    lcb_error_t lcb_get(lcb_t instance, const void *command_cookie, lcb_size_t num, const lcb_get_cmd_t *const *commands)

    lcb_error_t lcb_get_replica(lcb_t instance, const void *command_cookie, lcb_size_t num, const lcb_get_replica_cmd_t *const *commands)

    lcb_error_t lcb_unlock(lcb_t instance, const void *command_cookie, lcb_size_t num, const lcb_unlock_cmd_t *const *commands)

    lcb_error_t lcb_touch(lcb_t instance, const void *command_cookie, lcb_size_t num, const lcb_touch_cmd_t *const *commands)

    lcb_error_t lcb_store(lcb_t instance, const void *command_cookie, lcb_size_t num, const lcb_store_cmd_t *const *commands)

    lcb_error_t lcb_arithmetic(lcb_t instance, const void *command_cookie, lcb_size_t num, const lcb_arithmetic_cmd_t *const *commands)

    lcb_error_t lcb_observe(lcb_t instance, const void *command_cookie, lcb_size_t num, const lcb_observe_cmd_t *const *commands)

    lcb_error_t lcb_remove(lcb_t instance, const void *command_cookie, lcb_size_t num, const lcb_remove_cmd_t *const *commands)

    lcb_error_t lcb_server_stats(lcb_t instance, const void *command_cookie, lcb_size_t num, const lcb_server_stats_cmd_t *const *commands)

    lcb_error_t lcb_server_versions(lcb_t instance, const void *command_cookie, lcb_size_t num, const lcb_server_version_cmd_t *const *commands)

    lcb_error_t lcb_set_verbosity(lcb_t instance, const void *command_cookie, lcb_size_t num, const lcb_verbosity_cmd_t *const *commands)

    lcb_error_t lcb_flush(lcb_t instance, const void *cookie, lcb_size_t num, const lcb_flush_cmd_t *const *commands)

    lcb_error_t lcb_make_http_request(lcb_t instance, const void *command_cookie, lcb_http_type_t type, const lcb_http_cmd_t *cmd, lcb_http_request_t *request)

    void lcb_cancel_http_request(lcb_t instance, lcb_http_request_t request)

    lcb_timer_t lcb_timer_create(lcb_t instance, const void *command_cookie, lcb_uint32_t usec, int periodic, lcb_timer_callback callback, lcb_error_t *error)

    lcb_error_t lcb_timer_destroy(lcb_t instance, lcb_timer_t timer)

    lcb_int32_t lcb_get_num_replicas(lcb_t instance)

    lcb_int32_t lcb_get_num_nodes(lcb_t instance)

    const char *const *lcb_get_server_list(lcb_t instance)
