.class final Lcom/xueqiu/android/community/UserInfoShowActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "UserInfoShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserInfoShowActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserInfoShowActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserInfoShowActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$2;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$2;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 85
    invoke-static {}, Lcom/xueqiu/android/community/UserInfoShowActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$2;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UserInfoShowActivity;->a(Lcom/xueqiu/android/community/UserInfoShowActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->g(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 86
    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$2;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserInfoShowActivity$2$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserInfoShowActivity$2$1;-><init>(Lcom/xueqiu/android/community/UserInfoShowActivity$2;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 94
    return-void
.end method
