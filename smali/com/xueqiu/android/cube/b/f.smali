.class public final Lcom/xueqiu/android/cube/b/f;
.super Landroid/support/v4/a/h;
.source "PickNumberFragment.java"


# instance fields
.field private ak:I

.field private al:Lcom/xueqiu/android/cube/model/Holding;

.field private am:Lcom/xueqiu/android/cube/b/g;

.field private an:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/a/h;-><init>()V

    .line 46
    return-void
.end method

.method public static a(Lcom/xueqiu/android/cube/model/Holding;I)Lcom/xueqiu/android/cube/b/f;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/xueqiu/android/cube/b/f;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/b/f;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string v2, "arg_max"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    const-string v2, "arg_holding"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/b/f;->e(Landroid/os/Bundle;)V

    .line 41
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/b/f;)Lcom/xueqiu/android/cube/model/Holding;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/f;->al:Lcom/xueqiu/android/cube/model/Holding;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/b/f;)Lcom/xueqiu/android/cube/b/g;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/f;->am:Lcom/xueqiu/android/cube/b/g;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/b/f;)Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/f;->an:Landroid/widget/NumberPicker;

    return-object v0
.end method


# virtual methods
.method public final F_()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/a/h;->F_()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/f;->am:Lcom/xueqiu/android/cube/b/g;

    .line 94
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/a/h;->a(Landroid/app/Activity;)V

    .line 52
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/xueqiu/android/cube/b/g;

    move-object v1, v0

    iput-object v1, p0, Lcom/xueqiu/android/cube/b/f;->am:Lcom/xueqiu/android/cube/b/g;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 54
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnFragmentInteractionListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 62
    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 62
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 63
    const-string v1, "arg_max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/b/f;->ak:I

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 64
    const-string v1, "arg_holding"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/f;->al:Lcom/xueqiu/android/cube/model/Holding;

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/f;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030134

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 67
    const v0, 0x7f0e04d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/f;->an:Landroid/widget/NumberPicker;

    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/f;->an:Landroid/widget/NumberPicker;

    new-instance v2, Lcom/xueqiu/android/cube/b/f$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/b/f$1;-><init>(Lcom/xueqiu/android/cube/b/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/f;->an:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/xueqiu/android/cube/b/f;->ak:I

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/f;->an:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/f;->al:Lcom/xueqiu/android/cube/model/Holding;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/f;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "%s(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xueqiu/android/cube/b/f;->al:Lcom/xueqiu/android/cube/model/Holding;

    .line 78
    invoke-virtual {v5}, Lcom/xueqiu/android/cube/model/Holding;->getStockName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/xueqiu/android/cube/b/f;->al:Lcom/xueqiu/android/cube/model/Holding;

    invoke-virtual {v5}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/cube/b/f$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/b/f$2;-><init>(Lcom/xueqiu/android/cube/b/f;)V

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
