.class final Lcom/xueqiu/android/common/l;
.super Ljava/lang/Object;
.source "MainActivity.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/xueqiu/android/common/k;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/k;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 787
    iput-object p1, p0, Lcom/xueqiu/android/common/l;->e:Lcom/xueqiu/android/common/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iget-object v0, p0, Lcom/xueqiu/android/common/l;->e:Lcom/xueqiu/android/common/k;

    .line 1708
    iget-object v0, v0, Lcom/xueqiu/android/common/k;->c:Landroid/app/Activity;

    .line 776
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/l;->c:I

    .line 777
    iget-object v0, p0, Lcom/xueqiu/android/common/l;->e:Lcom/xueqiu/android/common/k;

    .line 2708
    iget-object v0, v0, Lcom/xueqiu/android/common/k;->c:Landroid/app/Activity;

    .line 777
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/l;->d:I

    .line 788
    iput-object p2, p0, Lcom/xueqiu/android/common/l;->f:Ljava/lang/String;

    .line 789
    iput-object p3, p0, Lcom/xueqiu/android/common/l;->a:Ljava/lang/String;

    .line 790
    iput p4, p0, Lcom/xueqiu/android/common/l;->b:I

    .line 791
    iput p5, p0, Lcom/xueqiu/android/common/l;->g:I

    .line 792
    return-void
.end method
