.class final Lcom/xueqiu/android/community/AccountBindingActivity$13;
.super Ljava/lang/Object;
.source "AccountBindingActivity.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/AccountBindingActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/AccountBindingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$13;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$13;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->l(Lcom/xueqiu/android/community/AccountBindingActivity;)Lcom/xueqiu/android/base/b/ao;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/AccountBindingActivity$13$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$13$1;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity$13;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ao;->a(Lcom/xueqiu/android/base/b/i;)V

    .line 299
    return-void
.end method
