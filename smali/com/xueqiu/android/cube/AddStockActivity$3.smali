.class final Lcom/xueqiu/android/cube/AddStockActivity$3;
.super Ljava/lang/Object;
.source "AddStockActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/AddStockActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Landroid/widget/ImageButton;

.field final synthetic c:Lcom/xueqiu/android/cube/AddStockActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/AddStockActivity;Landroid/widget/Button;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/xueqiu/android/cube/AddStockActivity$3;->c:Lcom/xueqiu/android/cube/AddStockActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/AddStockActivity$3;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/xueqiu/android/cube/AddStockActivity$3;->b:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity$3;->c:Lcom/xueqiu/android/cube/AddStockActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/AddStockActivity;->a(Lcom/xueqiu/android/cube/AddStockActivity;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity$3;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity$3;->c:Lcom/xueqiu/android/cube/AddStockActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/AddStockActivity;->a(Lcom/xueqiu/android/cube/AddStockActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity$3;->b:Landroid/widget/ImageButton;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity$3;->c:Lcom/xueqiu/android/cube/AddStockActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/AddStockActivity;->a(Lcom/xueqiu/android/cube/AddStockActivity;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity$3;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity$3;->b:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
