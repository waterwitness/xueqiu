.class final Lcom/xueqiu/android/stock/c/u$2;
.super Ljava/lang/Object;
.source "QuotesCenterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/u;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/u;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/u;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/u$2;->a:Lcom/xueqiu/android/stock/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/u$2;->a:Lcom/xueqiu/android/stock/c/u;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/u;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/RecentTalkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/u$2;->a:Lcom/xueqiu/android/stock/c/u;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/c/u;->a(Landroid/content/Intent;)V

    .line 191
    return-void
.end method
