.class final Lcom/xueqiu/android/view/wheel/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/view/wheel/WheelView;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/view/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/view/wheel/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xueqiu/android/view/wheel/WheelView$2;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    .line 210
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$2;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Z)V

    .line 214
    return-void
.end method

.method public final onInvalidated()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$2;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Z)V

    .line 219
    return-void
.end method
