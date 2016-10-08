.class final Lcom/xueqiu/android/trade/c/s$27$1;
.super Ljava/lang/Object;
.source "TradeItemAccountFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/s$27;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/trade/c/s$27;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/s$27;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$27$1;->b:Lcom/xueqiu/android/trade/c/s$27;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/s$27$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1245
    const/4 v0, 0x1

    .line 1246
    if-nez p2, :cond_0

    .line 1247
    const/4 v0, 0x0

    .line 1250
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$27$1;->b:Lcom/xueqiu/android/trade/c/s$27;

    iget-object v1, v1, Lcom/xueqiu/android/trade/c/s$27;->a:Lcom/xueqiu/android/trade/c/s;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$27$1;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;Ljava/lang/String;Z)V

    .line 1251
    return-void
.end method
