module mkncdio
  ! Stub of mkncdio for unit testing. This is enough to get other modules to compile, but
  ! it doesn't do anything useful.

  use shr_kind_mod, only : r8 => shr_kind_r8

  implicit none
  private

  public :: nf_open
  public :: nf_close
  public :: nf_strerror
  public :: nf_inq_dimid
  public :: nf_inq_dimname
  public :: nf_inq_dimlen
  public :: nf_inq_varid
  public :: nf_inq_varndims
  public :: nf_inq_vardimid
  public :: nf_get_var_double
  public :: nf_get_var_int
  public :: nf_get_vara_double
  public :: nf_get_att_double

  public :: check_ret
  public :: convert_latlon

  interface nf_get_vara_double
     module procedure nf_get_vara_double_2d
  end interface nf_get_vara_double

  integer, parameter, public :: nf_nowrite = 0
  integer, parameter, public :: nf_noerr = 0
  integer, parameter, public :: nf_max_name = 64

contains
  integer function nf_open(filename, mode, ncid)
    character(len=*), intent(in) :: filename
    integer, intent(in) :: mode
    integer, intent(out) :: ncid

    ncid = 0
    nf_open = 0
  end function nf_open

  integer function nf_close(ncid)
    integer, intent(in) :: ncid

    nf_close = 0
  end function nf_close

  function nf_strerror(rcode)
    character(len=16) :: nf_strerror
    integer, intent(in) :: rcode

    nf_strerror = 'N/A'
  end function nf_strerror

  integer function nf_inq_dimid(ncid, dimname, did)
    integer, intent(in) :: ncid
    character(len=*), intent(in) :: dimname
    integer, intent(out) :: did

    did = 0
    nf_inq_dimid = 0
  end function nf_inq_dimid

  integer function nf_inq_dimname(ncid, dimid, dimname)
    integer, intent(in) :: ncid
    integer, intent(in) :: dimid
    character(len=*), intent(out) :: dimname

    dimname = 'none'
    nf_inq_dimname = 0
  end function nf_inq_dimname

  integer function nf_inq_dimlen(ncid, did, dimlen)
    integer, intent(in) :: ncid
    integer, intent(in) :: did
    integer, intent(out) :: dimlen

    dimlen = 0
    nf_inq_dimlen = 0
  end function nf_inq_dimlen

  integer function nf_inq_varid(ncid, varname, vid)
    integer, intent(in) :: ncid
    character(len=*), intent(in) :: varname
    integer, intent(out) :: vid

    vid = 0
    nf_inq_varid = 0
  end function nf_inq_varid

  integer function nf_inq_varndims(ncid, varid, ndims)
    integer, intent(in) :: ncid
    integer, intent(in) :: varid
    integer, intent(out) :: ndims

    ndims = 0
    nf_inq_varndims = 0
  end function nf_inq_varndims

  integer function nf_inq_vardimid(ncid, varid, dimids)
    integer, intent(in) :: ncid
    integer, intent(in) :: varid
    integer, intent(out) :: dimids(:)

    dimids(:) = 0
    nf_inq_vardimid = 0
  end function nf_inq_vardimid

  integer function nf_get_var_double(ncid, vid, data)
    integer, intent(in) :: ncid
    integer, intent(in) :: vid
    real(r8), intent(out) :: data(:)

    data(:) = 0._r8
    nf_get_var_double = 0
  end function nf_get_var_double

  integer function nf_get_var_int(ncid, vid, data)
    integer, intent(in) :: ncid
    integer, intent(in) :: vid
    integer, intent(out) :: data(:)

    data(:) = 0
    nf_get_var_int = 0
  end function nf_get_var_int

  integer function nf_get_vara_double_2d(ncid, varid, starts, counts, data)
    integer, intent(in) :: ncid
    integer, intent(in) :: varid
    integer, intent(in) :: starts(:)
    integer, intent(in) :: counts(:)
    real(r8), intent(out) :: data(:,:)

    data(:,:) = 0._r8
    nf_get_vara_double_2d = 0
  end function nf_get_vara_double_2d

  integer function nf_get_att_double(ncid, varid, attname, attval)
    integer, intent(in) :: ncid
    integer, intent(in) :: varid
    character(len=*), intent(in) :: attname
    real(r8), intent(out) :: attval

    attval = 0._r8
  end function nf_get_att_double

  subroutine check_ret(ret, calling, varexists)
    integer, intent(in) :: ret
    character(len=*), intent(in) :: calling
    logical, intent(out), optional :: varexists

    if (present(varexists)) then
       varexists = .true.
    end if
  end subroutine check_ret

  subroutine convert_latlon(ncid, varname, data)
    integer, intent(in) :: ncid
    character(len=*), intent(in) :: varname
    real(r8), intent(inout) :: data(:)

  end subroutine convert_latlon

end module mkncdio
