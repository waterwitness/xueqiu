.class public final Lnet/a/a/c;
.super Ljava/lang/Object;
.source "PinyinHelper.java"


# direct methods
.method public static a(C)[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1144
    sget-object v1, Lnet/a/a/b;->a:Lnet/a/a/a;

    .line 2130
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 3049
    iget-object v1, v1, Lnet/a/a/a;->a:Ljava/util/Properties;

    .line 2133
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3111
    if-eqz v1, :cond_1

    const-string v2, "(none0)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3113
    const/4 v2, 0x1

    .line 2135
    :goto_0
    if-eqz v2, :cond_2

    .line 2088
    :goto_1
    if-eqz v1, :cond_0

    .line 2089
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2090
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 2092
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2096
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 3115
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 2135
    goto :goto_1
.end method
