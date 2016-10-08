.class public final Lcom/xiaomi/e/c/g;
.super Lcom/xiaomi/e/c/e;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/xiaomi/e/c/h;

.field private c:Lcom/xiaomi/e/c/i;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/xiaomi/e/c/e;-><init>(Landroid/os/Bundle;)V

    sget-object v0, Lcom/xiaomi/e/c/i;->a:Lcom/xiaomi/e/c/i;

    iput-object v0, p0, Lcom/xiaomi/e/c/g;->c:Lcom/xiaomi/e/c/i;

    iput-object v1, p0, Lcom/xiaomi/e/c/g;->a:Ljava/lang/String;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/e/c/g;->d:I

    iput-object v1, p0, Lcom/xiaomi/e/c/g;->b:Lcom/xiaomi/e/c/h;

    const-string v0, "ext_pres_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ext_pres_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/e/c/i;->valueOf(Ljava/lang/String;)Lcom/xiaomi/e/c/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/e/c/g;->c:Lcom/xiaomi/e/c/i;

    :cond_0
    const-string v0, "ext_pres_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ext_pres_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/e/c/g;->a:Ljava/lang/String;

    :cond_1
    const-string v0, "ext_pres_prio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ext_pres_prio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/e/c/g;->d:I

    :cond_2
    const-string v0, "ext_pres_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ext_pres_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/e/c/h;->valueOf(Ljava/lang/String;)Lcom/xiaomi/e/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/e/c/g;->b:Lcom/xiaomi/e/c/h;

    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/e/c/i;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/e/c/e;-><init>()V

    sget-object v0, Lcom/xiaomi/e/c/i;->a:Lcom/xiaomi/e/c/i;

    iput-object v0, p0, Lcom/xiaomi/e/c/g;->c:Lcom/xiaomi/e/c/i;

    iput-object v1, p0, Lcom/xiaomi/e/c/g;->a:Ljava/lang/String;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/e/c/g;->d:I

    iput-object v1, p0, Lcom/xiaomi/e/c/g;->b:Lcom/xiaomi/e/c/h;

    .line 1000
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/e/c/g;->c:Lcom/xiaomi/e/c/i;

    .line 0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<presence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    iget-object v1, p0, Lcom/xiaomi/e/c/e;->p:Ljava/lang/String;

    .line 0
    if-eqz v1, :cond_0

    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3000
    iget-object v2, p0, Lcom/xiaomi/e/c/e;->p:Ljava/lang/String;

    .line 0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/e/c/g;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, " id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/e/c/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 0
    if-eqz v1, :cond_2

    const-string v1, " to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5000
    iget-object v2, p0, Lcom/xiaomi/e/c/e;->r:Ljava/lang/String;

    .line 0
    invoke-static {v2}, Lcom/xiaomi/e/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6000
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 0
    if-eqz v1, :cond_3

    const-string v1, " from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7000
    iget-object v2, p0, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 0
    invoke-static {v2}, Lcom/xiaomi/e/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8000
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 0
    if-eqz v1, :cond_4

    const-string v1, " chid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9000
    iget-object v2, p0, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 0
    invoke-static {v2}, Lcom/xiaomi/e/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/e/c/g;->c:Lcom/xiaomi/e/c/i;

    if-eqz v1, :cond_5

    const-string v1, " type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/e/c/g;->c:Lcom/xiaomi/e/c/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/e/c/g;->a:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "<status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/e/c/g;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/e/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</status>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Lcom/xiaomi/e/c/g;->d:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_7

    const-string v1, "<priority>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/e/c/g;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</priority>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/xiaomi/e/c/g;->b:Lcom/xiaomi/e/c/h;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/xiaomi/e/c/g;->b:Lcom/xiaomi/e/c/h;

    sget-object v2, Lcom/xiaomi/e/c/h;->b:Lcom/xiaomi/e/c/h;

    if-eq v1, v2, :cond_8

    const-string v1, "<show>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/e/c/g;->b:Lcom/xiaomi/e/c/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</show>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/e/c/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10000
    iget-object v1, p0, Lcom/xiaomi/e/c/e;->v:Lcom/xiaomi/e/c/k;

    .line 0
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/xiaomi/e/c/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "</presence>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x80

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Priority value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid. Valid range is -128 through 128."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/xiaomi/e/c/g;->d:I

    return-void
.end method

.method public final b()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/e/c/e;->b()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/e/c/g;->c:Lcom/xiaomi/e/c/i;

    if-eqz v1, :cond_0

    const-string v1, "ext_pres_type"

    iget-object v2, p0, Lcom/xiaomi/e/c/g;->c:Lcom/xiaomi/e/c/i;

    invoke-virtual {v2}, Lcom/xiaomi/e/c/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/e/c/g;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "ext_pres_status"

    iget-object v2, p0, Lcom/xiaomi/e/c/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/xiaomi/e/c/g;->d:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    const-string v1, "ext_pres_prio"

    iget v2, p0, Lcom/xiaomi/e/c/g;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/e/c/g;->b:Lcom/xiaomi/e/c/h;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/e/c/g;->b:Lcom/xiaomi/e/c/h;

    sget-object v2, Lcom/xiaomi/e/c/h;->b:Lcom/xiaomi/e/c/h;

    if-eq v1, v2, :cond_3

    const-string v1, "ext_pres_mode"

    iget-object v2, p0, Lcom/xiaomi/e/c/g;->b:Lcom/xiaomi/e/c/h;

    invoke-virtual {v2}, Lcom/xiaomi/e/c/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method
