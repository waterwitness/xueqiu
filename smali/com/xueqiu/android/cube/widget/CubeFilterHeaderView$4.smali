.class public final Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$4;
.super Ljava/lang/Object;
.source "CubeFilterHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ListPopupWindow;

.field final synthetic b:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;Landroid/support/v7/internal/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$4;->b:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    iput-object p2, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$4;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$4;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->b()V

    .line 266
    return-void
.end method
