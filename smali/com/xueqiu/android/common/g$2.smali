.class final Lcom/xueqiu/android/common/g$2;
.super Ljava/lang/Object;
.source "InputSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/g;-><init>(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/g;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/xueqiu/android/common/g$2;->a:Lcom/xueqiu/android/common/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/common/g$2;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->a(Lcom/xueqiu/android/common/g;)Lcom/xueqiu/android/common/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/common/g$2;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->a(Lcom/xueqiu/android/common/g;)Lcom/xueqiu/android/common/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/common/h;->a()V

    .line 88
    :cond_0
    return-void
.end method
