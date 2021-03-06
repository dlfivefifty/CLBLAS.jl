
for (func, typ) in [(:clblasCher, CL_float2),
                    (:clblasZher, CL_double2)]
    
    @eval @blasfun $func(order::clblasOrder, uplo::clblasUplo,
                              N::Csize_t,
                              alpha::cl.CL_double,
                              X::cl.CL_mem, offx::Csize_t, incx::Cint,
                              A::cl.CL_mem, offa::Csize_t, lda::Csize_t,
                              n_queues::cl.CL_uint,
                              queues::Ptr{cl.CL_command_queue},
                              n_events_in_wait_list::cl.CL_uint,
                              event_wait_list::Ptr{cl.CL_event},
                              events::Ptr{cl.CL_event})

    @eval @blasfun2 $func(order::clblasOrder, uplo::clblasUplo,
                               N::Csize_t,
                               alpha::cl.CL_double,
                               X::cl.CL_mem, offx::Csize_t, incx::Cint,
                               A::cl.CL_mem, offa::Csize_t, lda::Csize_t)
    
end
