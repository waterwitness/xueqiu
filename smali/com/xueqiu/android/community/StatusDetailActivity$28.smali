.class final Lcom/xueqiu/android/community/StatusDetailActivity$28;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1800
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$28;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1804
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1800
    .line 2808
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$28;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    const-class v2, Lcom/xueqiu/android/community/ShareCommentResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2809
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$28;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 2810
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$28;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    const v1, 0x7f040007

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->overridePendingTransition(II)V

    .line 1800
    return-void
.end method
