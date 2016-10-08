.class final Lcom/xueqiu/android/base/h5/c$9;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Lcom/pingan/main/CheckChannelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xueqiu/android/base/h5/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$9;->d:Lcom/xueqiu/android/base/h5/c;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/c$9;->a:Lcom/xueqiu/android/base/h5/b;

    iput-object p3, p0, Lcom/xueqiu/android/base/h5/c$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xueqiu/android/base/h5/c$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkFailed()V
    .locals 3

    .prologue
    .line 788
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 789
    const-string v1, "msg"

    const-string v2, "\u89c6\u9891\u9274\u6743\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$9;->a:Lcom/xueqiu/android/base/h5/b;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1066
    iput-object v0, v1, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$9;->d:Lcom/xueqiu/android/base/h5/c;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$9;->a:Lcom/xueqiu/android/base/h5/b;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;I)V

    .line 792
    const-string v0, "\u89c6\u9891\u9274\u6743\u5931\u8d25"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public final checkPassed()V
    .locals 5

    .prologue
    .line 777
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 778
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/c$9;->d:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/trade/PAAccountVideoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 779
    const-string v2, "extra_event"

    iget-object v3, p0, Lcom/xueqiu/android/base/h5/c$9;->a:Lcom/xueqiu/android/base/h5/b;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 780
    const-string v2, "pavideo_channel_id"

    iget-object v3, p0, Lcom/xueqiu/android/base/h5/c$9;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v2, "pavideo_uid"

    iget-object v3, p0, Lcom/xueqiu/android/base/h5/c$9;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 783
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$9;->d:Lcom/xueqiu/android/base/h5/c;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/c$9;->a:Lcom/xueqiu/android/base/h5/b;

    .line 1046
    iget v2, v2, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 783
    const v3, 0x7f040010

    const v4, 0x7f040008

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;III)V

    .line 784
    return-void
.end method
