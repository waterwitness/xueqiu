.class public final Lcom/xueqiu/android/stock/d/a$9;
.super Ljava/lang/Object;
.source "QuotesCenterItemPresenter.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/d/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/d/a;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/d/a;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 604
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    .line 1057
    iget v0, v0, Lcom/xueqiu/android/stock/d/a;->d:I

    .line 604
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    .line 2057
    iget v0, v0, Lcom/xueqiu/android/stock/d/a;->d:I

    .line 604
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 605
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/util/as;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    .line 3057
    iput v2, v0, Lcom/xueqiu/android/stock/d/a;->e:I

    .line 607
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    .line 4057
    iget v1, v1, Lcom/xueqiu/android/stock/d/a;->d:I

    .line 607
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/d/a;->a(I)V

    .line 622
    :cond_1
    :goto_0
    return-void

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    .line 5057
    iget v0, v0, Lcom/xueqiu/android/stock/d/a;->d:I

    .line 612
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/xueqiu/android/base/util/as;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    .line 6057
    iput v2, v0, Lcom/xueqiu/android/stock/d/a;->e:I

    .line 614
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    .line 7057
    iget v1, v1, Lcom/xueqiu/android/stock/d/a;->d:I

    .line 614
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/d/a;->a(I)V

    goto :goto_0

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    .line 8057
    iget v0, v0, Lcom/xueqiu/android/stock/d/a;->d:I

    .line 618
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/xueqiu/android/base/util/as;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    .line 9057
    iput v2, v0, Lcom/xueqiu/android/stock/d/a;->e:I

    .line 620
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a$9;->a:Lcom/xueqiu/android/stock/d/a;

    .line 10057
    iget v1, v1, Lcom/xueqiu/android/stock/d/a;->d:I

    .line 620
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/d/a;->a(I)V

    goto :goto_0
.end method
