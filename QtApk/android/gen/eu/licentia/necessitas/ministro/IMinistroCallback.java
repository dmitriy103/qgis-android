/*
 * This file is auto-generated.  DO NOT MODIFY.
 * Original file: /home/marco/dev/qgis-android/QtApk/android/src/eu/licentia/necessitas/ministro/IMinistroCallback.aidl
 */
package eu.licentia.necessitas.ministro;
public interface IMinistroCallback extends android.os.IInterface
{
/** Local-side IPC implementation stub class. */
public static abstract class Stub extends android.os.Binder implements eu.licentia.necessitas.ministro.IMinistroCallback
{
private static final java.lang.String DESCRIPTOR = "eu.licentia.necessitas.ministro.IMinistroCallback";
/** Construct the stub at attach it to the interface. */
public Stub()
{
this.attachInterface(this, DESCRIPTOR);
}
/**
 * Cast an IBinder object into an eu.licentia.necessitas.ministro.IMinistroCallback interface,
 * generating a proxy if needed.
 */
public static eu.licentia.necessitas.ministro.IMinistroCallback asInterface(android.os.IBinder obj)
{
if ((obj==null)) {
return null;
}
android.os.IInterface iin = (android.os.IInterface)obj.queryLocalInterface(DESCRIPTOR);
if (((iin!=null)&&(iin instanceof eu.licentia.necessitas.ministro.IMinistroCallback))) {
return ((eu.licentia.necessitas.ministro.IMinistroCallback)iin);
}
return new eu.licentia.necessitas.ministro.IMinistroCallback.Stub.Proxy(obj);
}
public android.os.IBinder asBinder()
{
return this;
}
@Override public boolean onTransact(int code, android.os.Parcel data, android.os.Parcel reply, int flags) throws android.os.RemoteException
{
switch (code)
{
case INTERFACE_TRANSACTION:
{
reply.writeString(DESCRIPTOR);
return true;
}
case TRANSACTION_libs:
{
data.enforceInterface(DESCRIPTOR);
java.lang.String[] _arg0;
_arg0 = data.createStringArray();
java.lang.String _arg1;
_arg1 = data.readString();
java.lang.String _arg2;
_arg2 = data.readString();
int _arg3;
_arg3 = data.readInt();
java.lang.String _arg4;
_arg4 = data.readString();
this.libs(_arg0, _arg1, _arg2, _arg3, _arg4);
return true;
}
}
return super.onTransact(code, data, reply, flags);
}
private static class Proxy implements eu.licentia.necessitas.ministro.IMinistroCallback
{
private android.os.IBinder mRemote;
Proxy(android.os.IBinder remote)
{
mRemote = remote;
}
public android.os.IBinder asBinder()
{
return mRemote;
}
public java.lang.String getInterfaceDescriptor()
{
return DESCRIPTOR;
}
/**
    * This method is called back by the Ministro service
    *
    * param in - libs, you have to load before load the application
    * param in - evnVars, tab separated environment variables
    * param in - params, tab separated paras which should be passed to the application
    * param in - errorCode, the error number, the application should check the error code before starts
    *             - 0 no error
    *             - 1 no qt libs found
    *             - xxx
    * param in - errorMessage, the error message (where available, translated into phone language).
    */
public void libs(java.lang.String[] libs, java.lang.String environmentVariables, java.lang.String applicationParams, int errorCode, java.lang.String errorMessage) throws android.os.RemoteException
{
android.os.Parcel _data = android.os.Parcel.obtain();
try {
_data.writeInterfaceToken(DESCRIPTOR);
_data.writeStringArray(libs);
_data.writeString(environmentVariables);
_data.writeString(applicationParams);
_data.writeInt(errorCode);
_data.writeString(errorMessage);
mRemote.transact(Stub.TRANSACTION_libs, _data, null, android.os.IBinder.FLAG_ONEWAY);
}
finally {
_data.recycle();
}
}
}
static final int TRANSACTION_libs = (android.os.IBinder.FIRST_CALL_TRANSACTION + 0);
}
/**
    * This method is called back by the Ministro service
    *
    * param in - libs, you have to load before load the application
    * param in - evnVars, tab separated environment variables
    * param in - params, tab separated paras which should be passed to the application
    * param in - errorCode, the error number, the application should check the error code before starts
    *             - 0 no error
    *             - 1 no qt libs found
    *             - xxx
    * param in - errorMessage, the error message (where available, translated into phone language).
    */
public void libs(java.lang.String[] libs, java.lang.String environmentVariables, java.lang.String applicationParams, int errorCode, java.lang.String errorMessage) throws android.os.RemoteException;
}
