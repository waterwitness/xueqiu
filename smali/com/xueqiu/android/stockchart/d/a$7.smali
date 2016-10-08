.class final Lcom/xueqiu/android/stockchart/d/a$7;
.super Ljava/lang/Object;
.source "BaseChartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stockchart/d/a;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/stockchart/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stockchart/d/a;I)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/a$7;->b:Lcom/xueqiu/android/stockchart/d/a;

    iput p2, p0, Lcom/xueqiu/android/stockchart/d/a$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$7;->b:Lcom/xueqiu/android/stockchart/d/a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/d/a;->b(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$7;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->al:Lcom/xueqiu/android/stockchart/b/a;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$7;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->al:Lcom/xueqiu/android/stockchart/b/a;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$7;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->as:Ljava/lang/String;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/xueqiu/android/stockchart/d/a$7;->a:I

    invoke-interface {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    :cond_0
    return-void
.end method
