.class final Lcom/xueqiu/android/community/AccountBindingActivity$1;
.super Ljava/lang/Object;
.source "AccountBindingActivity.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/AccountBindingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/AccountBindingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$1;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$1;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->h()Landroid/app/Dialog;

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$1;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->b(Lcom/xueqiu/android/community/AccountBindingActivity;)Lcom/xueqiu/android/base/b/ap;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/AccountBindingActivity$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$1$1;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ap;->a(Lcom/xueqiu/android/base/b/i;)V

    .line 105
    return-void
.end method
