.class final Lcom/xueqiu/android/message/a$5;
.super Ljava/lang/Object;
.source "GroupProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/xueqiu/android/message/a$5;->a:Lcom/xueqiu/android/message/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/16 v10, 0x19

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 113
    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/message/a$5;->a:Lcom/xueqiu/android/message/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    .line 2152
    invoke-static {v0, v9}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 2218
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a$5;->a:Lcom/xueqiu/android/message/a;

    .line 2217
    iget-object v1, v0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->isJoined()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2218
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    .line 3069
    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v8}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    .line 3070
    if-nez v0, :cond_1

    .line 3071
    new-instance v0, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    .line 3072
    invoke-virtual {v0, v8}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 3073
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 3074
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 3075
    invoke-virtual {v0, v8}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 3076
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/model/Talk;->setGroupRef(Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 3077
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/IMGroup;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/model/Talk;->setLastTime(Ljava/util/Date;)V

    .line 3078
    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 3080
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3081
    const-string v3, "talk"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3082
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3226
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3227
    const-string v2, "%s\uff08\u6700\u591a%d\u4e2a\u5b57\uff09"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f070037

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/a;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3229
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a;->g()Landroid/support/v4/a/k;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3230
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3234
    invoke-virtual {v0}, Lcom/xueqiu/android/message/a;->h()Landroid/content/res/Resources;

    move-result-object v4

    .line 3235
    const v5, 0x7f08004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f08004c

    .line 3236
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f08004b

    .line 3237
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3235
    invoke-virtual {v3, v5, v6, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3239
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3241
    new-instance v4, Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a;->g()Landroid/support/v4/a/k;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 3242
    const v5, 0x7f0701a1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 3243
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 3244
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3245
    new-array v3, v8, [Landroid/text/InputFilter;

    .line 3246
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v9

    .line 3247
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3249
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3250
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3253
    const v2, 0x7f0700b1

    new-instance v3, Lcom/xueqiu/android/message/a$10;

    invoke-direct {v3, v0, v4}, Lcom/xueqiu/android/message/a$10;-><init>(Lcom/xueqiu/android/message/a;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3260
    const v2, 0x7f070070

    new-instance v3, Lcom/xueqiu/android/message/a$11;

    invoke-direct {v3, v0}, Lcom/xueqiu/android/message/a$11;-><init>(Lcom/xueqiu/android/message/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3267
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
