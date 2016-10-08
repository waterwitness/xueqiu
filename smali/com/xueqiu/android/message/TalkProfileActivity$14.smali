.class final Lcom/xueqiu/android/message/TalkProfileActivity$14;
.super Landroid/content/BroadcastReceiver;
.source "TalkProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/TalkProfileActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$14;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 302
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.updateIMGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "extra_imgroup"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 304
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$14;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->e(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$14;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->e(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$14;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->a(Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 308
    :cond_0
    return-void
.end method
