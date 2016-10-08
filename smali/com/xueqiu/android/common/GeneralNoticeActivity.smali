.class public Lcom/xueqiu/android/common/GeneralNoticeActivity;
.super Landroid/app/Activity;
.source "GeneralNoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/RelativeLayout;

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/xueqiu/android/common/GeneralNoticeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->e:J

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0xc80

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 91
    :pswitch_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 5053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->f:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/a;->f()V

    .line 97
    invoke-virtual {p0}, Lcom/xueqiu/android/common/GeneralNoticeActivity;->finish()V

    .line 98
    invoke-virtual {p0, v2, v2}, Lcom/xueqiu/android/common/GeneralNoticeActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 104
    :pswitch_1
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v3, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 108
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/a;->f()V

    .line 109
    invoke-virtual {p0}, Lcom/xueqiu/android/common/GeneralNoticeActivity;->finish()V

    .line 110
    invoke-virtual {p0, v2, v2}, Lcom/xueqiu/android/common/GeneralNoticeActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x7f0e0132
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/xueqiu/android/common/GeneralNoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/xueqiu/android/common/GeneralNoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_notice_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->e:J

    .line 49
    :cond_0
    sget-object v0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreate mNoticeId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/GeneralNoticeActivity;->setContentView(I)V

    .line 1058
    const v0, 0x7f0e0132

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/GeneralNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->d:Landroid/widget/RelativeLayout;

    .line 1059
    iget-object v0, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1060
    const v0, 0x7f0e0133

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/GeneralNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->b:Landroid/widget/ImageView;

    .line 1061
    iget-object v0, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    const v0, 0x7f0e0134

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/GeneralNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->c:Landroid/widget/ImageButton;

    .line 1063
    iget-object v0, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->g()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1068
    const-string v2, "link"

    .line 1106
    invoke-static {v0, v2, v1}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1068
    iput-object v2, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->f:Ljava/lang/String;

    .line 1069
    const-string v2, "image"

    .line 2106
    invoke-static {v0, v2, v1}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1072
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/d/a/b/f;->d()Lcom/d/a/a/a/b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1075
    :goto_0
    if-eqz v0, :cond_1

    .line 1076
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1078
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1081
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xc80

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1083
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 53
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    move-result-object v0

    iget-wide v4, p0, Lcom/xueqiu/android/common/GeneralNoticeActivity;->e:J

    .line 3755
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 4077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 3756
    new-instance v6, Lcom/xueqiu/android/base/a$9;

    invoke-direct {v6, v0}, Lcom/xueqiu/android/base/a$9;-><init>(Lcom/xueqiu/android/base/a;)V

    .line 3755
    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->c(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 54
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/a;->f()V

    .line 55
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
