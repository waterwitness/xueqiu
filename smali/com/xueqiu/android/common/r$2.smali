.class final Lcom/xueqiu/android/common/r$2;
.super Ljava/lang/Object;
.source "SNBListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/r;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/r;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/r;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xueqiu/android/common/r$2;->a:Lcom/xueqiu/android/common/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/common/r$2;->a:Lcom/xueqiu/android/common/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/r;Z)V

    .line 91
    return-void
.end method
