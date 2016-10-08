.class final Lcom/xueqiu/android/common/setting/SettingActivity$15;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/setting/SettingActivity;->changeFontSize(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ljava/lang/Float;

.field final synthetic c:Lcom/xueqiu/android/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity;Landroid/widget/TextView;Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$15;->c:Lcom/xueqiu/android/common/setting/SettingActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/setting/SettingActivity$15;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/xueqiu/android/common/setting/SettingActivity$15;->b:Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 510
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$15;->a:Landroid/widget/TextView;

    const/4 v1, 0x2

    div-int/lit8 v2, p2, 0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xueqiu/android/common/setting/SettingActivity$15;->b:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 511
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 521
    return-void
.end method
