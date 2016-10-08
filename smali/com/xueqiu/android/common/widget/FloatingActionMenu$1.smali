.class final Lcom/xueqiu/android/common/widget/FloatingActionMenu$1;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/widget/FloatingActionMenu;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListPopupWindow;

.field final synthetic b:Lcom/xueqiu/android/common/widget/i;

.field final synthetic c:Lcom/xueqiu/android/common/widget/FloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/FloatingActionMenu;Landroid/widget/ListPopupWindow;Lcom/xueqiu/android/common/widget/i;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$1;->c:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    iput-object p2, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$1;->a:Landroid/widget/ListPopupWindow;

    iput-object p3, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$1;->b:Lcom/xueqiu/android/common/widget/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$1;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$1;->b:Lcom/xueqiu/android/common/widget/i;

    .line 1255
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/i;->a:Ljava/util/Map;

    .line 121
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$1;->b:Lcom/xueqiu/android/common/widget/i;

    .line 2255
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/i;->a:Ljava/util/Map;

    .line 124
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$1;->c:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    invoke-static {v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(Lcom/xueqiu/android/common/widget/FloatingActionMenu;)Lcom/xueqiu/android/common/widget/j;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$1;->c:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    invoke-static {v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(Lcom/xueqiu/android/common/widget/FloatingActionMenu;)Lcom/xueqiu/android/common/widget/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xueqiu/android/common/widget/j;->a(I)Z

    goto :goto_0
.end method
