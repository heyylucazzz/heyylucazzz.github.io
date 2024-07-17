.class public abstract Lc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    goto :goto_7

    .line 4
    :cond_3
    instance-of v0, p1, Ljava/lang/CharSequence;

    .line 6
    if-eqz v0, :cond_d

    .line 8
    :goto_7
    check-cast p1, Ljava/lang/CharSequence;

    .line 10
    :goto_9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 13
    goto :goto_20

    .line 14
    :cond_d
    instance-of v0, p1, Ljava/lang/Character;

    .line 16
    if-eqz v0, :cond_1b

    .line 18
    check-cast p1, Ljava/lang/Character;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 27
    goto :goto_20

    .line 28
    :cond_1b
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    goto :goto_9

    .line 33
    :goto_20
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 1
    if-nez p0, :cond_8

    .line 3
    if-nez p1, :cond_6

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_c

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    goto :goto_c

    .line 9
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    :goto_c
    return p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lc/a;->f(Ljava/lang/NullPointerException;)V

    .line 12
    throw p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 6
    const-string v0, " must not be null"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lc/a;->f(Ljava/lang/NullPointerException;)V

    .line 18
    throw p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .line 1
    if-nez p0, :cond_60

    .line 2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-class v1, Lc/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_22
    :goto_22
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_31
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter specified as non-null is null: method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", parameter "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lc/a;->f(Ljava/lang/NullPointerException;)V

    throw p0

    :cond_60
    return-void
.end method

.method public static f(Ljava/lang/NullPointerException;)V
    .registers 7

    .line 1
    const-class v0, Lc/a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, -0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_d
    if-ge v4, v2, :cond_1f

    .line 16
    aget-object v5, v1, v4

    .line 18
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_1c

    .line 28
    move v3, v4

    .line 29
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    .line 31
    goto :goto_d

    .line 32
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    .line 34
    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 43
    return-void
.end method
