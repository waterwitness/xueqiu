.class final Lcom/xueqiu/android/stock/PrivateFundActivity$8;
.super Ljava/lang/Object;
.source "PrivateFundActivity.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$8;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 2

    .prologue
    .line 626
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$8;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    .line 1267
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/common/b;->m:Z

    .line 629
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$8;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    .line 3267
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/common/b;->m:Z

    .line 639
    return-void
.end method

.method public final b_(I)V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$8;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    .line 2267
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/common/b;->m:Z

    .line 634
    return-void
.end method
