.class final Lcom/xueqiu/android/common/widget/FloatingActionMenu$2;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/widget/FloatingActionMenu;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListPopupWindow;

.field final synthetic b:Lcom/xueqiu/android/common/widget/FloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/FloatingActionMenu;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$2;->b:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    iput-object p2, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$2;->a:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$2;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 140
    return-void
.end method
