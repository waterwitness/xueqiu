.class public Lcom/xueqiu/android/common/setting/a;
.super Lcom/xueqiu/android/common/c;
.source "H5DebugConfigFragment.java"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f03013e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f070196

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/a;->d(I)V

    .line 38
    const v0, 0x7f0e04d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/a;->b:Landroid/widget/CheckBox;

    .line 39
    const v0, 0x7f0e04d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/a;->c:Landroid/widget/CheckBox;

    .line 40
    const v0, 0x7f0e04d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/a;->d:Landroid/widget/EditText;

    .line 41
    const v0, 0x7f0e04da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/a;->e:Landroid/widget/EditText;

    .line 43
    invoke-virtual {p0}, Lcom/xueqiu/android/common/setting/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/a;->a:Landroid/content/SharedPreferences;

    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/a;->a:Landroid/content/SharedPreferences;

    const v1, 0x7f0701dc

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/a;->a:Landroid/content/SharedPreferences;

    const v2, 0x7f0701dd

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 46
    iget-object v2, p0, Lcom/xueqiu/android/common/setting/a;->a:Landroid/content/SharedPreferences;

    const v3, 0x7f0701de

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "xueqiu.com"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/xueqiu/android/common/setting/a;->a:Landroid/content/SharedPreferences;

    const v4, 0x7f0701df

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "80"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    iget-object v4, p0, Lcom/xueqiu/android/common/setting/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/a;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/a;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/a;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public final y_()Z
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    const v1, 0x7f0701dc

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/setting/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    const v1, 0x7f0701dd

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/setting/a;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    const v1, 0x7f0701de

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/setting/a;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    const v1, 0x7f0701df

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/setting/a;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->y_()Z

    move-result v0

    return v0
.end method
