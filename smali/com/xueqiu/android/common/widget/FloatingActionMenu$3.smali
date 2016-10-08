.class final Lcom/xueqiu/android/common/widget/FloatingActionMenu$3;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;ILjava/lang/String;ZIII)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/FloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/FloatingActionMenu;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$3;->a:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 190
    const v0, 0x7f0e001a

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$3;->a:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    invoke-static {v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(Lcom/xueqiu/android/common/widget/FloatingActionMenu;)Lcom/xueqiu/android/common/widget/j;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$3;->a:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    invoke-static {v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(Lcom/xueqiu/android/common/widget/FloatingActionMenu;)Lcom/xueqiu/android/common/widget/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xueqiu/android/common/widget/j;->a(I)Z

    .line 194
    :cond_0
    return-void
.end method
