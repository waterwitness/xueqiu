.class final Lcom/xueqiu/android/cube/p;
.super Ljava/lang/Object;
.source "NVHistoryActivity.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field final synthetic e:Lcom/xueqiu/android/cube/o;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/cube/o;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 257
    iput-object p1, p0, Lcom/xueqiu/android/cube/p;->e:Lcom/xueqiu/android/cube/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const v0, 0x7f0e00a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/p;->c:Landroid/widget/TextView;

    .line 259
    const v0, 0x7f0e03ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/p;->d:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f0e041d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/p;->b:Landroid/view/View;

    .line 261
    const v0, 0x7f0e0269

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/p;->a:Landroid/view/View;

    .line 262
    return-void
.end method
