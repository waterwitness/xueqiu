.class final Lcom/xueqiu/android/cube/a$2;
.super Ljava/lang/Object;
.source "AddStockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/model/Stock;

.field final synthetic b:Lcom/xueqiu/android/cube/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/a;Lcom/xueqiu/android/stock/model/Stock;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/xueqiu/android/cube/a$2;->b:Lcom/xueqiu/android/cube/a;

    iput-object p2, p0, Lcom/xueqiu/android/cube/a$2;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/xueqiu/android/cube/a$2;->b:Lcom/xueqiu/android/cube/a;

    iget-object v1, p0, Lcom/xueqiu/android/cube/a$2;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/a;->a(Lcom/xueqiu/android/cube/a;Lcom/xueqiu/android/stock/model/Stock;)V

    .line 264
    return-void
.end method
