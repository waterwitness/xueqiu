.class final Lcom/xueqiu/android/stockchart/d/a$6;
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
    .line 305
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/a$6;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x2

    const/4 v5, 0x1

    .line 308
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a$6;->a:Lcom/xueqiu/android/stockchart/d/a;

    .line 1348
    iget-object v0, v2, Lcom/xueqiu/android/stockchart/d/a;->az:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 1349
    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/xueqiu/android/stockchart/f;->minute_kline_menu:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1350
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v0, v6, v6, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, v2, Lcom/xueqiu/android/stockchart/d/a;->az:Landroid/widget/PopupWindow;

    .line 1351
    iget-object v3, v2, Lcom/xueqiu/android/stockchart/d/a;->az:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1352
    iget-object v3, v2, Lcom/xueqiu/android/stockchart/d/a;->az:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1353
    iget-object v3, v2, Lcom/xueqiu/android/stockchart/d/a;->az:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1354
    iget-object v3, v2, Lcom/xueqiu/android/stockchart/d/a;->az:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/xueqiu/android/stockchart/d/a$8;

    invoke-direct {v4, v2}, Lcom/xueqiu/android/stockchart/d/a$8;-><init>(Lcom/xueqiu/android/stockchart/d/a;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 1361
    sget v3, Lcom/xueqiu/android/stockchart/e;->minute_period_container:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1362
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1363
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1364
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 1365
    new-instance v4, Lcom/xueqiu/android/stockchart/d/a$9;

    invoke-direct {v4, v2}, Lcom/xueqiu/android/stockchart/d/a$9;-><init>(Lcom/xueqiu/android/stockchart/d/a;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1362
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1376
    :cond_1
    iget-object v0, v2, Lcom/xueqiu/android/stockchart/d/a;->az:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 309
    return-void
.end method
