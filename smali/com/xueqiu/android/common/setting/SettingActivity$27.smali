.class final Lcom/xueqiu/android/common/setting/SettingActivity$27;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/xueqiu/android/base/util/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/setting/SettingActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$27;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 729
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$27;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    .line 1737
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f070366

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1738
    new-array v2, v5, [Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%.0f"

    new-array v5, v5, [Ljava/lang/Object;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 1739
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/common/setting/SettingActivity$28;

    invoke-direct {v4, v0, v0, p1, p2}, Lcom/xueqiu/android/common/setting/SettingActivity$28;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;Lcom/xueqiu/android/base/b/q;D)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/xueqiu/android/base/b/ai;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 730
    return-void
.end method
