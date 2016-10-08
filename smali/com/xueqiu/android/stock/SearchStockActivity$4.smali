.class final Lcom/xueqiu/android/stock/SearchStockActivity$4;
.super Ljava/lang/Object;
.source "SearchStockActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/SearchStockActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Landroid/widget/ImageButton;

.field final synthetic c:Landroid/widget/ListView;

.field final synthetic d:Lcom/xueqiu/android/stock/SearchStockActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/SearchStockActivity;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->d:Lcom/xueqiu/android/stock/SearchStockActivity;

    iput-object p2, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->b:Landroid/widget/ImageButton;

    iput-object p4, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->c:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 110
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->d:Lcom/xueqiu/android/stock/SearchStockActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/SearchStockActivity;->a(Lcom/xueqiu/android/stock/SearchStockActivity;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->d:Lcom/xueqiu/android/stock/SearchStockActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/SearchStockActivity;->a(Lcom/xueqiu/android/stock/SearchStockActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->b:Landroid/widget/ImageButton;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->d:Lcom/xueqiu/android/stock/SearchStockActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/SearchStockActivity;->a(Lcom/xueqiu/android/stock/SearchStockActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->b:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$4;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
