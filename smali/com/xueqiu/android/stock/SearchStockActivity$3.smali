.class final Lcom/xueqiu/android/stock/SearchStockActivity$3;
.super Ljava/lang/Object;
.source "SearchStockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/SearchStockActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/xueqiu/android/stock/SearchStockActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/SearchStockActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/xueqiu/android/stock/SearchStockActivity$3;->b:Lcom/xueqiu/android/stock/SearchStockActivity;

    iput-object p2, p0, Lcom/xueqiu/android/stock/SearchStockActivity$3;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$3;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method
