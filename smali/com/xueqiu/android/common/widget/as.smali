.class final Lcom/xueqiu/android/common/widget/as;
.super Landroid/support/v4/a/v;
.source "SwipeDialog.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/common/widget/ar;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/widget/ar;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/as;->b:Lcom/xueqiu/android/common/widget/ar;

    .line 48
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/as;->b:Lcom/xueqiu/android/common/widget/ar;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/ar;->b(Lcom/xueqiu/android/common/widget/ar;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/as;->b:Lcom/xueqiu/android/common/widget/ar;

    invoke-static {v1}, Lcom/xueqiu/android/common/widget/ar;->a(Lcom/xueqiu/android/common/widget/ar;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/as;->b:Lcom/xueqiu/android/common/widget/ar;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/ar;->a(Lcom/xueqiu/android/common/widget/ar;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
