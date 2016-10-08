.class final Lcom/xueqiu/android/common/setting/SettingsPushActivity$3;
.super Ljava/lang/Object;
.source "SettingsPushActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/setting/SettingsPushActivity;->changeReceivePeriod(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$3;->a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$3;->a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->b(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)Lcom/xueqiu/android/view/wheel/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$3;->a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->c(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)Lcom/xueqiu/android/view/wheel/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$3;->a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    iget-object v2, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$3;->a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    const v3, 0x7f0701eb

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->a(Lcom/xueqiu/android/common/setting/SettingsPushActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method
