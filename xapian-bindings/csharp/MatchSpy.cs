/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.5
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace Xapian {

using System;
using System.Runtime.InteropServices;

public class MatchSpy : IDisposable {
  private HandleRef swigCPtr;
  protected bool swigCMemOwn;

  internal MatchSpy(IntPtr cPtr, bool cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = new HandleRef(this, cPtr);
  }

  internal static HandleRef getCPtr(MatchSpy obj) {
    return (obj == null) ? new HandleRef(null, IntPtr.Zero) : obj.swigCPtr;
  }

  ~MatchSpy() {
    Dispose();
  }

  public virtual void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          XapianPINVOKE.delete_MatchSpy(swigCPtr);
        }
        swigCPtr = new HandleRef(null, IntPtr.Zero);
      }
      GC.SuppressFinalize(this);
    }
  }

  public MatchSpy() : this(XapianPINVOKE.new_MatchSpy(), true) {
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
    SwigDirectorConnect();
  }

  public virtual void Apply(Document doc, double wt) {
    XapianPINVOKE.MatchSpy_Apply(swigCPtr, Document.getCPtr(doc), wt);
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
  }

  public virtual string Name() {
    string ret = (SwigDerivedClassHasMethod("Name", swigMethodTypes1) ? XapianPINVOKE.MatchSpy_NameSwigExplicitMatchSpy(swigCPtr) : XapianPINVOKE.MatchSpy_Name(swigCPtr));
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public virtual void MergeResults(string s) {
    if (SwigDerivedClassHasMethod("MergeResults", swigMethodTypes2)) XapianPINVOKE.MatchSpy_MergeResultsSwigExplicitMatchSpy(swigCPtr, s); else XapianPINVOKE.MatchSpy_MergeResults(swigCPtr, s);
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
  }

  public virtual string GetDescription() {
    string ret = (SwigDerivedClassHasMethod("GetDescription", swigMethodTypes3) ? XapianPINVOKE.MatchSpy_GetDescriptionSwigExplicitMatchSpy(swigCPtr) : XapianPINVOKE.MatchSpy_GetDescription(swigCPtr));
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  private void SwigDirectorConnect() {
    if (SwigDerivedClassHasMethod("Apply", swigMethodTypes0))
      swigDelegate0 = new SwigDelegateMatchSpy_0(SwigDirectorApply);
    if (SwigDerivedClassHasMethod("Name", swigMethodTypes1))
      swigDelegate1 = new SwigDelegateMatchSpy_1(SwigDirectorName);
    if (SwigDerivedClassHasMethod("MergeResults", swigMethodTypes2))
      swigDelegate2 = new SwigDelegateMatchSpy_2(SwigDirectorMergeResults);
    if (SwigDerivedClassHasMethod("GetDescription", swigMethodTypes3))
      swigDelegate3 = new SwigDelegateMatchSpy_3(SwigDirectorGetDescription);
    XapianPINVOKE.MatchSpy_director_connect(swigCPtr, swigDelegate0, swigDelegate1, swigDelegate2, swigDelegate3);
  }

  private bool SwigDerivedClassHasMethod(string methodName, Type[] methodTypes) {
    System.Reflection.MethodInfo methodInfo = this.GetType().GetMethod(methodName, System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance, null, methodTypes, null);
    bool hasDerivedMethod = methodInfo.DeclaringType.IsSubclassOf(typeof(MatchSpy));
    return hasDerivedMethod;
  }

  private void SwigDirectorApply(IntPtr doc, double wt) {
    Apply(new Document(doc, false), wt);
  }

  private string SwigDirectorName() {
    return Name();
  }

  private void SwigDirectorMergeResults(string s) {
    MergeResults(s);
  }

  private string SwigDirectorGetDescription() {
    return GetDescription();
  }

  public delegate void SwigDelegateMatchSpy_0(IntPtr doc, double wt);
  public delegate string SwigDelegateMatchSpy_1();
  public delegate void SwigDelegateMatchSpy_2(string s);
  public delegate string SwigDelegateMatchSpy_3();

  private SwigDelegateMatchSpy_0 swigDelegate0;
  private SwigDelegateMatchSpy_1 swigDelegate1;
  private SwigDelegateMatchSpy_2 swigDelegate2;
  private SwigDelegateMatchSpy_3 swigDelegate3;

  private static Type[] swigMethodTypes0 = new Type[] { typeof(Document), typeof(double) };
  private static Type[] swigMethodTypes1 = new Type[] {  };
  private static Type[] swigMethodTypes2 = new Type[] { typeof(string) };
  private static Type[] swigMethodTypes3 = new Type[] {  };
}

}
