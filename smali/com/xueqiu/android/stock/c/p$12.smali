.class final Lcom/xueqiu/android/stock/c/p$12;
.super Ljava/lang/Object;
.source "PortfolioItemFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$12;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$12;->a:Lcom/xueqiu/android/stock/c/p;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$12;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/p;->c(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/model/Portfolio;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/p;->a(Lcom/xueqiu/android/stock/c/p;Lcom/xueqiu/android/stock/model/Portfolio;)V

    .line 253
    return-void
.end method
