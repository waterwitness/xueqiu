.class final Lcom/xueqiu/android/common/setting/SettingActivity$13;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/setting/SettingActivity;->changeFontSize(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/SeekBar;

.field final synthetic b:Ljava/lang/Float;

.field final synthetic c:Lcom/xueqiu/android/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity;Landroid/widget/SeekBar;Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$13;->c:Lcom/xueqiu/android/common/setting/SettingActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/setting/SettingActivity$13;->a:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/xueqiu/android/common/setting/SettingActivity$13;->b:Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 497
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$13;->c:Lcom/xueqiu/android/common/setting/SettingActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0701db

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/setting/SettingActivity$13;->a:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/xueqiu/android/common/setting/SettingActivity$13;->b:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 498
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 499
    return-void
.end method
