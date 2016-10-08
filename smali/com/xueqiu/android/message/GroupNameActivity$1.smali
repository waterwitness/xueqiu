.class final Lcom/xueqiu/android/message/GroupNameActivity$1;
.super Lcom/xueqiu/android/base/b/p;
.source "GroupNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/GroupNameActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/message/model/IMGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/GroupNameActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/GroupNameActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/message/GroupNameActivity$1;->a:Lcom/xueqiu/android/message/GroupNameActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 65
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 62
    check-cast p1, Lcom/xueqiu/android/message/model/IMGroup;

    .line 1070
    if-eqz p1, :cond_0

    .line 1073
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->saveIMGroup(Lcom/xueqiu/android/message/model/IMGroup;)Z

    .line 1074
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1075
    const-string v1, "extra_org"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1076
    iget-object v1, p0, Lcom/xueqiu/android/message/GroupNameActivity$1;->a:Lcom/xueqiu/android/message/GroupNameActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/message/GroupNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 1077
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupNameActivity$1;->a:Lcom/xueqiu/android/message/GroupNameActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/GroupNameActivity;->finish()V

    .line 1078
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupNameActivity$1;->a:Lcom/xueqiu/android/message/GroupNameActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/GroupNameActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.updateIMGroup"

    const-string v2, "extra_imgroup"

    invoke-static {v0, v1, v2, p1}, Lcom/xueqiu/android/base/util/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    :cond_0
    return-void
.end method
