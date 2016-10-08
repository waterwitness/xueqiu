.class final Lcom/xueqiu/android/community/ReplierProfileActivity$1;
.super Ljava/lang/Object;
.source "ReplierProfileActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/ReplierProfileActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/ReplierProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/ReplierProfileActivity;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity$1;->a:Lcom/xueqiu/android/community/ReplierProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const v4, 0x461c4000    # 10000.0f

    .line 194
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x0

    .line 199
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 203
    :goto_1
    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 204
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity$1;->a:Lcom/xueqiu/android/community/ReplierProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/ReplierProfileActivity;->a(Lcom/xueqiu/android/community/ReplierProfileActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lcom/xueqiu/android/community/ReplierProfileActivity$1;->a:Lcom/xueqiu/android/community/ReplierProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/ReplierProfileActivity;->a(Lcom/xueqiu/android/community/ReplierProfileActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 207
    const v0, 0x7f070471

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/xueqiu/android/community/ReplierProfileActivity;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Parse float error"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/xueqiu/android/community/ReplierProfileActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "beforeTextChanged"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 189
    invoke-static {}, Lcom/xueqiu/android/community/ReplierProfileActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTextChanged"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method
