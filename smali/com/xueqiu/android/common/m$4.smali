.class final Lcom/xueqiu/android/common/m$4;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/m;->F()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/m;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/xueqiu/android/common/m$4;->a:Lcom/xueqiu/android/common/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 728
    if-eqz p2, :cond_0

    .line 730
    iget-object v0, p0, Lcom/xueqiu/android/common/m$4;->a:Lcom/xueqiu/android/common/m;

    invoke-static {v0}, Lcom/xueqiu/android/common/m;->h(Lcom/xueqiu/android/common/m;)V

    .line 736
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/a;->e()V

    .line 737
    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/m$4;->a:Lcom/xueqiu/android/common/m;

    invoke-static {v0}, Lcom/xueqiu/android/common/m;->i(Lcom/xueqiu/android/common/m;)V

    goto :goto_0
.end method
