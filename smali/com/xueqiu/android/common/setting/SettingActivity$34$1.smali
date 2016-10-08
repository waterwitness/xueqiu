.class final Lcom/xueqiu/android/common/setting/SettingActivity$34$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/setting/SettingActivity$34;->onLongClick(Landroid/view/View;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/SettingActivity$34;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity$34;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$34$1;->a:Lcom/xueqiu/android/common/setting/SettingActivity$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 0

    .prologue
    .line 294
    packed-switch p2, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 296
    :pswitch_0
    invoke-virtual {p1}, Lcom/xueqiu/android/common/widget/f;->dismiss()V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
