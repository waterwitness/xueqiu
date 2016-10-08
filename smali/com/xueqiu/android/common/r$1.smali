.class final Lcom/xueqiu/android/common/r$1;
.super Ljava/lang/Object;
.source "SNBListView.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/h;


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
    .line 79
    iput-object p1, p0, Lcom/xueqiu/android/common/r$1;->a:Lcom/xueqiu/android/common/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/common/r$1;->a:Lcom/xueqiu/android/common/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/r;Z)V

    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/common/r$1;->a:Lcom/xueqiu/android/common/r;

    .line 1043
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 83
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->e()V

    .line 84
    return-void
.end method
