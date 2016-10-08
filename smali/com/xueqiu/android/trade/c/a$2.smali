.class final Lcom/xueqiu/android/trade/c/a$2;
.super Ljava/lang/Object;
.source "BindBrokerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/a;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/a$2;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 118
    const-string v0, "/6123409880/48394788"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a$2;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/a;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 119
    return-void
.end method
