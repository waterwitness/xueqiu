.class final Lcom/xueqiu/android/stockchart/d/a$9;
.super Ljava/lang/Object;
.source "BaseChartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stockchart/d/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stockchart/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stockchart/d/a;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/a$9;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$9;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/a;->b(Lcom/xueqiu/android/stockchart/d/a;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 369
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$9;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/d/a;->b(Ljava/lang/String;)V

    .line 370
    return-void
.end method
