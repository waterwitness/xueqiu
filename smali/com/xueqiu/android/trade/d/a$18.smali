.class final Lcom/xueqiu/android/trade/d/a$18;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/trade/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/c;

.field final synthetic b:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/trade/d/c;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$18;->b:Lcom/xueqiu/android/trade/d/a;

    iput-object p2, p0, Lcom/xueqiu/android/trade/d/a$18;->a:Lcom/xueqiu/android/trade/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$18;->b:Lcom/xueqiu/android/trade/d/a;

    .line 1069
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/trade/d/a;->A:Z

    .line 361
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$18;->a:Lcom/xueqiu/android/trade/d/c;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$18;->a:Lcom/xueqiu/android/trade/d/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/d/c;->a(Lcom/xueqiu/android/trade/d/c;Z)V

    .line 366
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$18;->b:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 365
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->I_()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$18;->b:Lcom/xueqiu/android/trade/d/a;

    .line 3069
    iput-boolean v1, v0, Lcom/xueqiu/android/trade/d/a;->A:Z

    .line 371
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$18;->a:Lcom/xueqiu/android/trade/d/c;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$18;->a:Lcom/xueqiu/android/trade/d/c;

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/d/c;->a(Lcom/xueqiu/android/trade/d/c;Z)V

    .line 375
    :cond_0
    return-void
.end method
