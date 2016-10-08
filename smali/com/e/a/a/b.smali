.class public final Lcom/e/a/a/b;
.super Ljava/lang/Object;
.source "FormBodyPart.java"


# instance fields
.field final a:Lcom/e/a/a/c;

.field final b:Lcom/e/a/a/a/c;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/e/a/a/a/c;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcom/e/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    const-string v0, "Body"

    invoke-static {p2, v0}, Lcom/e/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/e/a/a/b;->c:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/e/a/a/b;->b:Lcom/e/a/a/a/c;

    .line 31
    new-instance v0, Lcom/e/a/a/c;

    invoke-direct {v0}, Lcom/e/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/e/a/a/b;->a:Lcom/e/a/a/c;

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1057
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    iget-object v1, p0, Lcom/e/a/a/b;->c:Ljava/lang/String;

    .line 1058
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    invoke-interface {p2}, Lcom/e/a/a/a/c;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1061
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-interface {p2}, Lcom/e/a/a/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    :cond_0
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/e/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    instance-of v0, p2, Lcom/e/a/a/a/a;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 2071
    check-cast v0, Lcom/e/a/a/a/a;

    .line 3044
    iget-object v0, v0, Lcom/e/a/a/a/a;->a:Lcom/e/a/a;

    .line 2075
    :goto_0
    if-eqz v0, :cond_2

    .line 2076
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Lcom/e/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/e/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    :goto_1
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p2}, Lcom/e/a/a/a/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/e/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void

    .line 2073
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2078
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2079
    invoke-interface {p2}, Lcom/e/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    invoke-interface {p2}, Lcom/e/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2081
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-interface {p2}, Lcom/e/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    :cond_3
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/e/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 51
    const-string v0, "Field name"

    invoke-static {p1, v0}, Lcom/e/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/e/a/a/b;->a:Lcom/e/a/a/c;

    new-instance v2, Lcom/e/a/a/i;

    invoke-direct {v2, p1, p2}, Lcom/e/a/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5024
    iget-object v0, v2, Lcom/e/a/a/i;->a:Ljava/lang/String;

    .line 4037
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 4038
    iget-object v0, v1, Lcom/e/a/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4039
    if-nez v0, :cond_0

    .line 4040
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4041
    iget-object v4, v1, Lcom/e/a/a/c;->b:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4043
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4044
    iget-object v0, v1, Lcom/e/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
