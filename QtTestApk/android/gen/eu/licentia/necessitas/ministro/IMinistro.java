/*
 * This file is auto-generated.  DO NOT MODIFY.
 * Original file: /home/marco/dev/qgis-android/QtTestApk/android/src/eu/licentia/necessitas/ministro/IMinistro.aidl
 */
package eu.licentia.necessitas.ministro;
public interface IMinistro extends android.os.IInterface
{
/** Local-side IPC implementation stub class. */
public static abstract class Stub extends android.os.Binder implements eu.licentia.necessitas.ministro.IMinistro
{
private static final java.lang.String DESCRIPTOR = "eu.licentia.necessitas.ministro.IMinistro";
/** Construct the stub at attach it to the interface. */
public Stub()
{
this.attachInterface(this, DESCRIPTOR);
}
/**
 * Cast an IBinder object into an eu.licentia.necessitas.ministro.IMinistro interface,
 * generating a proxy if needed.
 */
public static eu.licentia.necessitas.ministro.IMinistro asInterface(android.os.IBinder obj)
{
if ((obj==null)) {
return null;
}
android.os.IInterface iin = (android.os.IInterface)obj.queryLocalInterface(DESCRIPTOR);
if (((iin!=null)&&(iin instanceof eu.licentia.necessitas.ministro.IMinistro))) {
return ((eu.licentia.necessitas.ministro.IMinistro)iin);
}
return new eu.licentia.necessitas.ministro.IMinistro.Stub.Proxy(obj);
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
case TRANSACTION_checkModules:
{
data.enforceInterface(DESCRIPTOR);
eu.licentia.necessitas.ministro.IMinistroCallback _arg0;
_arg0 = eu.licentia.necessitas.ministro.IMinistroCallback.Stub.asInterface(data.readStrongBinder());
java.lang.String[] _arg1;
_arg1 = data.createStringArray();
java.lang.String _arg2;
_arg2 = data.readString();
int _arg3;
_arg3 = data.readInt();
int _arg4;
_arg4 = data.readInt();
this.checkModules(_arg0, _arg1, _arg2, _arg3, _arg4);
reply.writeNoException();
return true;
}
}
return super.onTransact(code, data, reply, flags);
}
private static class Proxy implements eu.licentia.necessitas.ministro.IMinistro
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
    * Check/download required libs to run the application
    *
    * param callback              - interface used by the service to notify the client when it has the libs
    * param modules               - Qt modules you want to check
    * param appName               - Application name, used to show more informations to user
    * param ministroApiLevel      - Ministro api level, used to check ministro service compatibility.
    *                               Current API Level is 1 !!!
    * param mecessitasApiLevel    - Necessitas api level, used to download the right platform plugin.
    *                               Current API Level is 1 !!!
    */
public void checkModules(eu.licentia.necessitas.ministro.IMinistroCallback callback, java.lang.String[] modules, java.lang.String appName, int ministroApiLevel, int necessitasApiLevel) throws android.os.RemoteException
{
android.os.Parcel _data = android.os.Parcel.obtain();
android.os.Parcel _reply = android.os.Parcel.obtain();
try {
_data.writeInterfaceToken(DESCRIPTOR);
_data.writeStrongBinder((((callback!=null))?(callback.asBinder()):(null)));
_data.writeStringArray(modules);
_data.writeString(appName);
_data.writeInt(ministroApiLevel);
_data.writeInt(necessitasApiLevel);
mRemote.transact(Stub.TRANSACTION_checkModules, _data, _reply, 0);
_reply.readException();
}
finally {
_reply.recycle();
_data.recycle();
}
}
}
static final int TRANSACTION_checkModules = (android.os.IBinder.FIRST_CALL_TRANSACTION + 0);
}
/**
    * Check/download required libs to run the application
    *
    * param callback              - interface used by the service to notify the client when it has the libs
    * param modules               - Qt modules you want to check
    * param appName               - Application name, used to show more informations to user
    * param ministroApiLevel      - Ministro api level, used to check ministro service compatibility.
    *                               Current API Level is 1 !!!
    * param mecessitasApiLevel    - Necessitas api level, used to download the right platform plugin.
    *                               Current API Level is 1 !!!
    */
public void checkModules(eu.licentia.necessitas.ministro.IMinistroCallback callback, java.lang.String[] modules, java.lang.String appName, int ministroApiLevel, int necessitasApiLevel) throws android.os.RemoteException;
}
