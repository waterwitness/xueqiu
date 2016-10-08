.class public final Lcom/xueqiu/android/cube/widget/e;
.super Landroid/widget/FrameLayout;
.source "SwitchItem.java"


# instance fields
.field a:Landroid/widget/CheckBox;

.field b:Landroid/widget/TextView;


# virtual methods
.method public final setChecked(Z)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/e;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 53
    return-void
.end method

.method public final setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/e;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
