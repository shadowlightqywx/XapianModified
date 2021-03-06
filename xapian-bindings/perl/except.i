/** @file perl/except.i
 * @brief Custom Perl exception handling.
 */
/* Warning: This file is generated by /data/home/olly/tmp/xapian-git-snapshot/tags/v1.2.23/xapian/xapian-bindings/perl/generate-perl-exceptions
 * - do not modify directly!
 *
 * Copyright (C) 2003,2004,2006,2007,2008,2011,2012,2013 Olly Betts
 * Copyright (C) 2007 Lemur Consulting Ltd
 * Copyright (C) 2007 Richard Boulton
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
 */

namespace Xapian {

%exceptionclass Error;
%exceptionclass LogicError;
%exceptionclass RuntimeError;
%exceptionclass AssertionError;
%exceptionclass InvalidArgumentError;
%exceptionclass InvalidOperationError;
%exceptionclass UnimplementedError;
%exceptionclass DatabaseError;
%exceptionclass DatabaseCorruptError;
%exceptionclass DatabaseCreateError;
%exceptionclass DatabaseLockError;
%exceptionclass DatabaseModifiedError;
%exceptionclass DatabaseOpeningError;
%exceptionclass DatabaseVersionError;
%exceptionclass DocNotFoundError;
%exceptionclass FeatureUnavailableError;
%exceptionclass InternalError;
%exceptionclass NetworkError;
%exceptionclass NetworkTimeoutError;
%exceptionclass QueryParserError;
%exceptionclass SerialisationError;
%exceptionclass RangeError;
}
%include "xapian/error.h"

%{
namespace Xapian {
void handle_exception() {
    try {
	throw;
    } catch (const Xapian::RangeError &e) {
	void * p = (void *) new Xapian::RangeError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::RangeError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::RangeError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::RangeError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::SerialisationError &e) {
	void * p = (void *) new Xapian::SerialisationError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::SerialisationError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::SerialisationError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::SerialisationError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::QueryParserError &e) {
	void * p = (void *) new Xapian::QueryParserError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::QueryParserError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::QueryParserError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::QueryParserError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::NetworkTimeoutError &e) {
	void * p = (void *) new Xapian::NetworkTimeoutError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::NetworkTimeoutError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::NetworkTimeoutError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::NetworkTimeoutError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::NetworkError &e) {
	void * p = (void *) new Xapian::NetworkError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::NetworkError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::NetworkError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::NetworkError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::InternalError &e) {
	void * p = (void *) new Xapian::InternalError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::InternalError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::InternalError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::InternalError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::FeatureUnavailableError &e) {
	void * p = (void *) new Xapian::FeatureUnavailableError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::FeatureUnavailableError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::FeatureUnavailableError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::FeatureUnavailableError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::DocNotFoundError &e) {
	void * p = (void *) new Xapian::DocNotFoundError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::DocNotFoundError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::DocNotFoundError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::DocNotFoundError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::DatabaseVersionError &e) {
	void * p = (void *) new Xapian::DatabaseVersionError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::DatabaseVersionError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::DatabaseVersionError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::DatabaseVersionError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::DatabaseOpeningError &e) {
	void * p = (void *) new Xapian::DatabaseOpeningError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::DatabaseOpeningError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::DatabaseOpeningError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::DatabaseOpeningError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::DatabaseModifiedError &e) {
	void * p = (void *) new Xapian::DatabaseModifiedError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::DatabaseModifiedError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::DatabaseModifiedError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::DatabaseModifiedError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::DatabaseLockError &e) {
	void * p = (void *) new Xapian::DatabaseLockError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::DatabaseLockError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::DatabaseLockError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::DatabaseLockError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::DatabaseCreateError &e) {
	void * p = (void *) new Xapian::DatabaseCreateError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::DatabaseCreateError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::DatabaseCreateError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::DatabaseCreateError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::DatabaseCorruptError &e) {
	void * p = (void *) new Xapian::DatabaseCorruptError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::DatabaseCorruptError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::DatabaseCorruptError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::DatabaseCorruptError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::DatabaseError &e) {
	void * p = (void *) new Xapian::DatabaseError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::DatabaseError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::DatabaseError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::DatabaseError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::UnimplementedError &e) {
	void * p = (void *) new Xapian::UnimplementedError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::UnimplementedError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::UnimplementedError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::UnimplementedError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::InvalidOperationError &e) {
	void * p = (void *) new Xapian::InvalidOperationError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::InvalidOperationError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::InvalidOperationError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::InvalidOperationError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::InvalidArgumentError &e) {
	void * p = (void *) new Xapian::InvalidArgumentError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::InvalidArgumentError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::InvalidArgumentError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::InvalidArgumentError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::AssertionError &e) {
	void * p = (void *) new Xapian::AssertionError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::AssertionError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::AssertionError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::AssertionError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::RuntimeError &e) {
	void * p = (void *) new Xapian::RuntimeError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::RuntimeError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::RuntimeError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::RuntimeError", p);
	croak(Nullch);
#endif
    } catch (const Xapian::LogicError &e) {
	void * p = (void *) new Xapian::LogicError(e);
#ifdef croak_sv
	SV * sv = sv_newmortal();
	sv_setref_pv(sv, "Search::Xapian::LogicError", p);
	croak_sv(sv);
#elif defined ERRSV
	sv_setref_pv(ERRSV, "Search::Xapian::LogicError", p);
	croak(Nullch);
#else
	sv_setref_pv(get_sv("@", TRUE), "Search::Xapian::LogicError", p);
	croak(Nullch);
#endif
    } catch (const std::exception& e) {
	croak("std::exception: %s", e.what());
    } catch (...) {
	croak("something terrible happened");
    }
}
}
%}

%exception {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
