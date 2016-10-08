.class final Lcom/xueqiu/android/community/UserProfileActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UserProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserProfileActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$1;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$1;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->a(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/e;

    .line 1380
    invoke-virtual {v0}, Lcom/xueqiu/android/community/d/e;->c()Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/d/e$2;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/community/d/e$2;-><init>(Lcom/xueqiu/android/community/d/e;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 127
    return-void
.end method
