.class public interface abstract Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;
.super Ljava/lang/Object;


# virtual methods
.method public abstract asBinder()Landroid/os/IBinder;
.end method

.method public abstract onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
.end method

.method public abstract onConnectFailed()V
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation
.end method
