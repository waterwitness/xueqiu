.class final Lcom/xueqiu/android/message/c$1$1;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/c$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c$1;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/xueqiu/android/message/c$1$1;->a:Lcom/xueqiu/android/message/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/message/c$1$1;->a:Lcom/xueqiu/android/message/c$1;

    iget-object v0, v0, Lcom/xueqiu/android/message/c$1;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/client/MessageService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Lcom/snowballfinance/messageplatform/a/h;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/h;-><init>()V

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 171
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1724
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/h;->c:Ljava/lang/Long;

    .line 172
    iget-object v1, p0, Lcom/xueqiu/android/message/c$1$1;->a:Lcom/xueqiu/android/message/c$1;

    iget-object v1, v1, Lcom/xueqiu/android/message/c$1;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v1}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/client/MessageService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/a;)V

    .line 174
    :cond_0
    return-void
.end method
